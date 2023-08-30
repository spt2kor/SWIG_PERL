//===========================================================================
#include "vect.h"
#include "Log.h"
#include <algorithm>
#include <numeric>                  //std::accumulate()

//===========================================================================
#undef CLASS_NAME
#define CLASS_NAME "[VECTOR]"
//===========================================================================


//===========================================================================
double average(std::vector<int> v) {
    FUNC_START;

    auto res = std::accumulate(v.begin(), v.end(), 0.0)/v.size(); //numeric
    FUNC_END;
    return res;
}

std::vector<double> half(const std::vector<double>& v) {
    FUNC_START;

    std::vector<double> w(v);
    for (unsigned int i=0; i<w.size(); i++)
        w[i] /= 2.0;

    FUNC_END;
    return w;
}

void halve_in_place(std::vector<double>& v) {
    FUNC_START;

    for (std::vector<double>::iterator it = v.begin(); it != v.end(); ++it)
        *it /= 2.0;

    FUNC_END;
}
//===========================================================================
