// -*- Mode: C++; tab-width: 2; -*-
// vi: set ts=2:
//
// $Id$
//

%MappedType Index
{
%TypeHeaderCode
	#include <BALL/COMMON/global.h>
	using namespace BALL;
%End

%ConvertToTypeCode
	if (sipIsErr == NULL)
	{
#if PY_MAJOR_VERSION < 3
		return PyInt_Check(sipPy);
	}
	if (PyInt_Check(sipPy))
#else
		return PyLong_Check(sipPy);
	}
	if (PyLong_Check(sipPy))
#endif
	{
		*sipCppPtr = new Index;
#if PY_MAJOR_VERSION < 3
		**sipCppPtr = PyInt_AsLong(sipPy);
#else
		**sipCppPtr = PyLong_AsLong(sipPy);
#endif
	
		return 1;
	}
	
	return 0;
%End
%ConvertFromTypeCode
	if (sipCpp == NULL)
	{
#if PY_MAJOR_VERSION < 3
		return PyInt_FromLong(0);
	}
	return PyInt_FromLong(*sipCpp);
#else
		return PyLong_FromLong(0);
	}
	return PyLong_FromLong(*sipCpp);
#endif
%End
};

%MappedType Position
{
%TypeHeaderCode
	#include <BALL/COMMON/global.h>
	using namespace BALL;
%End
%ConvertToTypeCode
	if (sipIsErr == NULL)
	{
#if PY_MAJOR_VERSION < 3
		return PyInt_Check(sipPy);
	}
	if (PyInt_Check(sipPy))
#else
		return PyLong_Check(sipPy);
	}
	if (PyLong_Check(sipPy))
#endif
	{
		*sipCppPtr = new Position;
#if PY_MAJOR_VERSION < 3
		**sipCppPtr = PyInt_AsLong(sipPy);
#else
		**sipCppPtr = PyLong_AsLong(sipPy);
#endif
	
		return 1;
	}
	
	return 0;
%End
%ConvertFromTypeCode
	if (sipCpp == NULL)
	{
#if PY_MAJOR_VERSION < 3
		return PyInt_FromLong(0);
	}
	return PyInt_FromLong(*sipCpp);
#else
		return PyLong_FromLong(0);
	}
	return PyLong_FromLong(*sipCpp);
#endif
%End
};

%MappedType LongIndex
{
%TypeHeaderCode
	#include <BALL/COMMON/global.h>
	using namespace BALL;
%End

%ConvertToTypeCode
	if (sipIsErr == NULL)
	{
#if PY_MAJOR_VERSION < 3
		return PyInt_Check(sipPy);
	}
	if (PyInt_Check(sipPy))
#else
		return PyLong_Check(sipPy);
	}
	if (PyLong_Check(sipPy))
#endif
	{
		*sipCppPtr = new LongIndex;
#if PY_MAJOR_VERSION < 3
		**sipCppPtr = PyInt_AsLong(sipPy);
#else
		**sipCppPtr = PyLong_AsLong(sipPy);
#endif
	
		return 1;
	}
	
	return 0;
%End
%ConvertFromTypeCode
	if (sipCpp == NULL)
	{
#if PY_MAJOR_VERSION < 3
		return PyInt_FromLong(0);
	}
	return PyInt_FromLong(*sipCpp);
#else
		return PyLong_FromLong(0);
	}
	return PyLong_FromLong(*sipCpp);
#endif
%End
};

%MappedType Time
{
%TypeHeaderCode
	#include <BALL/COMMON/global.h>
	using namespace BALL;
%End

%ConvertToTypeCode
	if (sipIsErr == NULL)
	{
#if PY_MAJOR_VERSION < 3
		return PyInt_Check(sipPy);
	}
	if (PyInt_Check(sipPy))
#else
		return PyLong_Check(sipPy);
	}
	if (PyLong_Check(sipPy))
#endif
	{
		*sipCppPtr = new Time;
#if PY_MAJOR_VERSION < 3
		**sipCppPtr = PyInt_AsLong(sipPy);
#else
		**sipCppPtr = PyLong_AsLong(sipPy);
#endif
	
		return 1;
	}
	
	return 0;
%End
%ConvertFromTypeCode
	if (sipCpp == NULL)
	{
#if PY_MAJOR_VERSION < 3
		return PyInt_FromLong(0);
	}
	return PyInt_FromLong(*sipCpp);
#else
		return PyLong_FromLong(0);
	}
	return PyLong_FromLong(*sipCpp);
#endif
%End
};


typedef int Size;
typedef double DoubleReal;
