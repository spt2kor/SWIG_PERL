/*my module name*/
%module STDLib
//=======================================
%{
    #include "str.h"
    #include "vect.h"
%}


//=======================================
%include "std_string.i"

%apply const std::string& {std::string* }; //required for changePerlStrPtr()

%apply const std::string& {std::string& };// Not working

%include "../cpp/str.h"
//=======================================

%include "std_vector.i"

namespace std {
    %template(vectori) vector<int>;
    %template(vectord) vector<double>;
};

%include "../cpp/vect.h"
//=======================================


//=======================================

//=======================================

//=======================================
