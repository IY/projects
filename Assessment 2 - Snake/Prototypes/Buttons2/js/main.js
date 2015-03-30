/******************************************
*	Main
*	All global variables required by multiple 
*	scripts are declared in this script.
*	
******************************************/

/******************************************
*	Constants
******************************************/
var CANVAS_NAME = "gameScreen";
var CANVAS_WIDTH = 500;
var CANVAS_HEIGHT = 500;
var CANVAS_COLOUR = "#FF0000";
var FONT = "30px Arial";
var FONT_COLOUR = "#0000FF";

/******************************************
*	Globals
******************************************/
var canvas;					//Reference to the canvas object (set in SetupCanvas)
var canvasContext;			//Reference to the canvas context (set in SetupCanvas)
var canvasOffset;			//The position relative to the left and top edges of the document
var images = new Array();	// Images will be loaded and stored in this array for future use.

function Init() {
	SetupCanvas();
	SetupButtons();
}

function SetupCanvas() {

	//Get canvas object and set sizes
	canvas = document.getElementById(CANVAS_NAME);
	canvas.width = CANVAS_WIDTH;
	canvas.height = CANVAS_HEIGHT;
	
	// Clear the canvas using the default colour
	canvasContext=canvas.getContext("2d");
	canvasContext.fillStyle = CANVAS_COLOUR;
	canvasContext.fillRect(0,0,canvas.width,canvas.height);
	
	// Get the canvas offset using jquery
	canvasOffset = $("#" + CANVAS_NAME).offset();
}



