CXX = g++
CXXFLAGS = -std=c++11 -Wall
LIB_NAME = libcalculator.a
EXECUTABLE = calculator_app

SRCS = calculator.cpp main.cpp
OBJS = $(SRCS:.cpp=.o)

all: $(LIB_NAME) $(EXECUTABLE)

$(LIB_NAME): $(OBJS)
	ar rcs $@ $^

$(EXECUTABLE): $(OBJS)
	$(CXX) $(CXXFLAGS) -O $@ $^ -L. -lcalculator
	
%.0: %.cpp
	$(CXX) $(CXXFLAGS) -c -o $@ $<
	
clean:
	rm -f $(OBJS) $(LIB_NAME) $(EXECUTABLE)
