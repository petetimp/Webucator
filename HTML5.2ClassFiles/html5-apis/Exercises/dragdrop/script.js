var dropzoneleft, drag, dropzoneright;
var dropleftcount = 0, dragcount = 0, droprightcount = 0;
window.addEventListener("load",dragDrop,false);

function dragDrop() {
	dropzoneleft = document.getElementById("dropzoneleft");
	drag = document.getElementById("drag");
	dropzoneright = document.getElementById("dropzoneright");
	drag.addEventListener("dragstart", handleDragStart, false);
	drag.addEventListener("drag", handleDrag, false);
	drag.addEventListener("dragend", handleDragEnd, false);
	dropzoneleft.addEventListener("dragenter", handleDragEnter, false);
	dropzoneleft.addEventListener("dragover", handleDragOver, false);
	dropzoneleft.addEventListener("dragleave", handleDragLeave, false);
	dropzoneleft.addEventListener("drop", handleDrop, false);
	dropzoneright.addEventListener("dragenter", handleDragEnter, false);
	dropzoneright.addEventListener("dragover", handleDragOver, false);
	dropzoneright.addEventListener("dragleave", handleDragLeave, false);
	dropzoneright.addEventListener("drop", handleDrop, false);
}

function handleDragStart(e) {
	this.style.backgroundColor="green";
}

var dragReported=false;
function handleDrag(e) {
	dragReported = true;
}

function handleDragEnter(e) {
	cancel(e);
}

var dragOverReported=false;
function handleDragLeave(e) {
	dragOverReported = false;
}

function handleDragOver(e) {
	dragOverReported = true;
	cancel(e);
}

function handleDrop(e) {
	//if dropped-on element was "dropzoneleft", increment dropleftcount;
	//else, increment droprightcount

	//display the incremented count on the left or right drop zone, as appropriate

	//increment dragcount and display on the drag element
	
	cancel(e);
}

function handleDragEnd(e) {
	//document.getElementById("output").innerHTML+="<li>Dragging Ended</li>";
	this.style.backgroundColor="red";
}

function cancel(e) {
	if (e.preventDefault) {
		e.preventDefault();
	}
	return false;
}