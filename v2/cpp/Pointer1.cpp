#include "Pointer1.h"
#include "Log.h"
//===================================================================


//===================================================================
#undef CLASS_NAME
#define CLASS_NAME "[Pointer.h]"

//===================================================================
void divide(int* n,int* d, int* res)
{
    FUNC_START;
    auto& nr = *n;
    auto& dr = *d;
    auto& resr = *res;
    PRINT_VAR(nr);
    PRINT_VAR(dr) ;
    resr = nr/dr;
    PRINT_VAR(resr);
    FUNC_END;
}

//===================================================================

//===================================================================
