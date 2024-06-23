JAVAC=javac
JAVA=java
MAIN=Main

SOURCES=Color.java Main.java

# Default target
all: run

# Compile Main and its dependencies
Main.class: Main.java Color.java
	$(JAVAC) $^

# Run the main class
run: Main.class
	$(JAVA) $(MAIN)

# Clean up class files
clean:
	rm -f *.class

# Declare phony targets
.PHONY: all run clean
