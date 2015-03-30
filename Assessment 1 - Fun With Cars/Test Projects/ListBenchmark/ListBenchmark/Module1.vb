﻿Module Module1
    Public Class Car
        Public Name As String

    End Class

    Dim exitCommanded As Boolean

    Sub Main()
        DisplayMenu()

        While exitCommanded = False
            TestLists()
        End While

        EndOfProgram()
    End Sub

    Private Sub DisplayMenu()
        Console.WriteLine("This program will test the performance of: carsList as New List(of Car)")
    End Sub

    Private Sub TestLists()
        Dim amount As Integer
        Dim startTime As Long
        Dim content As string

        Console.WriteLine()
        Console.WriteLine("------")
        Console.WriteLine("How many cars do you want to add to the list?")
        Console.Write("> ")
        amount = CInt(Console.ReadLine)
        Console.WriteLine("What is the car's name?")
        Console.Write("> ")
        content = Console.ReadLine()


        Dim carsList As New List(Of Car)
        Dim tmpCar As New Car

        ' Start Timing
        startTime = GetTime()

        For i As Integer = 0 To amount
            tmpCar.Name = content
            carsList.Add(tmpCar)
        Next

        ' Stop Timing
        Console.WriteLine("Operation took {0:N0} milliseconds to complete", GetTimeDiff(startTime))


    End Sub

    Private Function GetTime() As Long

        Return DateTime.UtcNow.Ticks

    End Function

    Private Function GetTimeDiff(ByVal startTime As Long) As Integer

        Return CInt(((DateTime.UtcNow.Ticks - startTime) * 100) / 1000000)

    End Function

    Private Sub HandleCommand(ByVal command As String)

        Select Case command.ToLower

            Case "q"
                exitCommanded = True

        End Select

    End Sub

    Private Sub EndOfProgram()
        Console.WriteLine("Press any key to continue...")
        Console.ReadKey(True)
    End Sub
End Module
