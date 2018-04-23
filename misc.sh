# JAVA COMPILE RUN: Compiles and runs java program
j() {
	ARG=$1
	javac $ARG
	java ${ARG%.*}
}

alias chrome="open -a \"Google Chrome\""

alias c="clear"

alias a="atom"
alias a.="atom ."
