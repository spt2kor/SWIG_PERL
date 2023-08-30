#pragma once

/*https://www.swig.org/Doc4.1/SWIGDocumentation.html#Introduction_nn2*/
class Rectangle{
    
    int height;
    int width;

public:

    Rectangle(int height, int width);
    ~Rectangle() = default;
    Rectangle(const Rectangle& other);
    Rectangle& operator= (const Rectangle &other);

    int area();
    void show();
    Rectangle clone();
    static bool classInfo();
};

int calculateArea(int width, int height);

extern double pi;

#define RED 0xFF0000

