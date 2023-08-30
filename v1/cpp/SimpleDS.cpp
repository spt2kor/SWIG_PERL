#include <iostream>
#include <typeinfo>
#include "SimpleDS.h"

using namespace std;


//=========================================================================
double pi = 3.14;

#define FUNC_START {cout<<endl<<__FUNCTION__<<"() started."<<endl;}


#define FUNC_END {cout<<endl<<__FUNCTION__<<"() exited."<<endl;}


//=========================================================================
Rectangle::Rectangle(int height, int width) : height(height), width(width)
{
    FUNC_START;

    FUNC_END;
}
Rectangle::Rectangle(const Rectangle &o) : height(o.height), width(o.width)
{
    FUNC_START;

    FUNC_END;
}
Rectangle &Rectangle::operator=(const Rectangle &o){
    FUNC_START;
    height = o.height;
    width = o.width;
    FUNC_END;
    return *this;
}

int Rectangle::area(){
    FUNC_START;
    auto area = width * height;
    FUNC_END;
    return area;
}

void Rectangle::show()
{
    FUNC_START;
    cout << endl<< "Rectangle details: height : "<<height<<", width : "<<width << endl;
    FUNC_END;
}

Rectangle Rectangle::clone()
{
    FUNC_START;
    Rectangle r1(height,width);
    FUNC_END;
    return r1;
}

bool Rectangle::classInfo()
{
    FUNC_START;
    cout << endl<< "class details: "<<typeid(Rectangle).name()<< endl;
    FUNC_END;
    return true;
}

//=========================================================================
int calculateArea(int width, int height)
{
        FUNC_START;
        auto area = width * height;
        cout<<"\n value of pi = "<<pi <<", and color REd = "<<RED<<endl;
        FUNC_END;
        return area;
}

//=========================================================================