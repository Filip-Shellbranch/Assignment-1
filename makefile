buildFolder := build
e0Name := e0.out
e1Name := e1.out
e2Name := e2.out
e5Name := e5.out


clean:
	find ${buildFolder}/ -mindepth 1 -delete

e0: 
	g++ Exercise_0/helloworld.cpp -o ${buildFolder}/${e0Name}
	./${buildFolder}/${e0Name}

e1:
	g++ -std=c++11 -Wall -pthread Exercise_1/non-determinism.cpp -o ${buildFolder}/${e1Name}
	./${buildFolder}/${e1Name}

e2:
	g++ -std=c++11 -Wall -pthread Exercise_2/shared-variable.cpp -o ${buildFolder}/${e2Name}
	./${buildFolder}/${e2Name}

e5:
	g++ -std=c++11 -Wall -pthread Exercise_5/performance.cpp -o ${buildFolder}/${e5Name}
	./${buildFolder}/${e5Name}