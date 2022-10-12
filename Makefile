OBJ = main.o mainwindow.o moc_mainwindow.o 
CC = g++
EXEC = UNIX_Exercice1
CFLAGS = -pipe -g -std=gnu++11 -Wall -W -D_REENTRANT -fPIC -DQT_DEPRECATED_WARNINGS -DQT_QML_DEBUG -DQT_WIDGETS_LIB -DQT_GUI_LIB -DQT_CORE_LIB -I../UNIX_Exercice1 -I. -isystem /usr/include/qt5 -isystem /usr/include/qt5/QtWidgets -isystem /usr/include/qt5/QtGui -isystem /usr/include/qt5/QtCore -I. -I. -I/usr/lib64/qt5/mkspecs/linux-g++
LDFLAGS = /usr/lib64/libQt5Widgets.so /usr/lib64/libQt5Gui.so /usr/lib64/libQt5Core.so /usr/lib64/libGL.so -lpthread

all : $(OBJ)
	$(CC) -o $(EXEC) $(OBJ) $(LDFLAGS)

main.o : main.cpp
	$(CC) -c main.cpp $(CFLAGS)

mainwindow.o : mainwindow.cpp mainwindow.h
	$(CC) -c mainwindow.cpp $(CFLAGS)

moc_mainwindow.o : moc_mainwindow.cpp
	$(CC) -c moc_mainwindow.cpp $(CFLAGS)

clean:
	rm -f $(OBJ) $(EXEC)