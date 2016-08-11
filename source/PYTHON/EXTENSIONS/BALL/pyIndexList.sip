// -*- Mode: C++; tab-width: 2; -*-
// vi: set ts=2:
//
// $Id$
//


%MappedType PyIndexList
{
%TypeHeaderCode
	#include <BALL/PYTHON/pyIndexList.h>
  #include <BALL/PYTHON/pyBALLSipHelper.h>
	using namespace BALL;
%End
%ConvertFromTypeCode
#if PY_MAJOR_VERSION >= 3
#define PyInt_FromLong PyLong_FromLong
#endif
	PyObject *pl;

	if ((pl = PyList_New(0)) == NULL)
	{
		return NULL;
	}

	// Convert the list.
	for (PyIndexList::ConstIterator it = sipCpp->begin(); it != sipCpp->end(); ++it)
	{
		if (PyList_Append(pl, PyInt_FromLong(*it)) < 0)
		{
			Py_DECREF(pl);
			return NULL;
		}
	}

	return pl;
%End
 
%ConvertToTypeCode
#if PY_MAJOR_VERSION >= 3
#define PyInt_AsLong PyLong_AsLong
#endif
	// Convert a Python list of Index instances to an IndexList object on the
	// heap.
 
	if (sipIsErr == NULL)
	{
		return PyList_Check(sipPy);
	}
 
	PyIndexList* index_list = new PyIndexList;
 
	for (int i = 0; i < PyList_GET_SIZE(sipPy); ++i)
	{
		Index index = PyInt_AsLong(PyList_GET_ITEM(sipPy,i));
		index_list -> push_back(index);
	}
 
	*sipCppPtr = index_list;

	return 1;
%End
};

