//player controls whose turn it is (X or O)
var player=true;
//computer controls whether or not the opponent is a computer
var computer=false;
//state holds information about the current state of the tic tac toe board (where X's and O's are)
//all states initially blank space
var state = [];
for(var i=0; i<3; i++) {
	state[i] = [];
	for(var j=0; j<3; j++) {
		state[i][j] = ' ';
	}
}

//row, column, diagonalComplete determine if the players last move was a winning move for them
function rowComplete(player, row){
	if(state[row][0]==player && state[row][1]==player && state[row][2]==player) return true;
	return false;
}

function columnComplete(player, column){
	if(state[0][column]==player && state[1][column]==player && state[2][column]==player) return true;
	return false;
}

function diagonalComplete(player){
	if(state[1][1]!=player) return false;
	if(state[0][0]==player && state[2][2]==player) return true;
	if(state[0][2]==player && state[2][0]==player) return true;
	return false;
}
//convenience function to determine if winning move
function isWinning(player, row, column){
	if (columnComplete(player, column) || diagonalComplete(player) || rowComplete(player, row)){
		return true;
	}
	return false;
}
//determines if the game has finished with no winner
function isCat(){
	var buttons = document.getElementsByClassName('Tile');
	for(var k=0; k<buttons.length; k++) {
		if (buttons[k].innerHTML==' ') return false;
	}
	return true;
}
//changes the state of the tile with matching id
function changeState(id){
	//convert id to row and column index for state
	var i = Math.floor(id/10) - 1;
	var j = id%10 - 1;
	if(player){
		//change external and internal representation to match move made
		document.getElementById(id).innerHTML="X";
		document.getElementById(id).disabled=true;
		player=false;
		state[i][j]='X';
		//check if winning move or if game is Cat
		if (isWinning('X', i , j)){
			alert("Player 1 has won!");
			reset();
			return;
		} else if (isCat()) {
			alert("Tie");
			reset();
		}
		// if playing against computer
		if(computer){
			//computer will just pick first available tile starting upper left and going through that row, then next row, etc.
			for(var m=0; m<3; m++) {
				for(var n=0; n<3; n++) {
					if (state[m][n] == ' ') {
						state[m][n]='O';
						var id2 = (m+1)*10 + (n+1);
						document.getElementById(id2).innerHTML="O";
						document.getElementById(id2).disabled=true;
						player=true;
						if (isWinning('O', m , n)){
							alert("Player 2 has won!");
							reset();
							return;
						} else if (isCat()) {
							alert("Tie");
							reset();
						}
						return;
					}
				}
			}
		}
	}else{
		//change external and internal representation to match move made
		document.getElementById(id).innerHTML="O";
		document.getElementById(id).disabled=true;
		state[i][j]='O';
		player=true;
		//check if winning move or Cat game
		if (isWinning('O', i , j)){
			alert("Player 2 has won!");
			reset();
			return;
		} else if (isCat()){
			alert("Tie");
			reset();
		}
	}
}

//resets external and internal representation to default game board
function reset(){
	var buttons = document.getElementsByClassName('Tile');
	for(var k=0; k<buttons.length; k++) {
		buttons[k].innerHTML=' ';
		buttons[k].disabled= false;
	}
	player=true;
	for(var i=0; i<3; i++) {
		for(var j=0; j<3; j++) {
			state[i][j] = ' ';
		}
	}
}

//toggle opponent type and reset board
function changeOpponent(){
	if (computer){
		computer=false;
		document.getElementById(999).innerHTML="Opponent: Human";
	}else{
		computer=true;
		document.getElementById(999).innerHTML="Opponent: Computer";
	}
	reset();
}