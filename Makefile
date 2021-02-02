main: myMain
	./myMain

myMain: main.cpp Task.o HighPriority.o MediumPriority.o LowPriority.o User.o RewardsMaster.o
	g++ -std=c++11 main.cpp Task.o HighPriority.o MediumPriority.o LowPriority.o User.o RewardsMaster.o -o myMain

Task.o: Task.cpp Task.h
	g++ -c -std=c++11 Task.cpp -o Task.o

HighPriority.o: HighPriority.cpp HighPriority.h 
	g++ -c -std=c++11 HighPriority.cpp -o HighPriority.o

MediumPriority.o: MediumPriority.cpp MediumPriority.h
	g++ -c -std=c++11 MediumPriority.cpp -o MediumPriority.o

LowPriority.o: LowPriority.cpp LowPriority.h 
	g++ -c -std=c++11 LowPriority.cpp -o LowPriority.o

User.o: User.cpp User.h 
	g++ -c -std=c++11 User.cpp -o User.o

RewardsMaster.o: RewardsMaster.cpp RewardsMaster.h 
	g++ -c -std=c++11 RewardsMaster.cpp -o RewardsMaster.o

clean:
	rm -f myMain *.o
