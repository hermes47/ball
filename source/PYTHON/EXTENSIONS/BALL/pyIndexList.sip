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
	PyObject *pl;

	if ((pl = PyList_New(0)) == NULL)
	{
		return NULL;
	}

	// Convert the list.
	for (PyIndexList::ConstIterator it = sipCpp->begin(); it != sipCpp->end(); ++it)
	{
#if PY_MAJOR_VERSION < 3
		if (PyList_Append(pl, PyInt_FromLong(*it)) < 0)
#else
		if (PyList_Append(pl, PyLong_FromLong(*it)) < 0)
#endif
		{
			Py_DECREF(pl);
			return NULL;
		}
	}

	return pl;
%End
 
%ConvertToTypeCode
	// Convert a Python list of Index instances to an IndexList object on the
	// heap.
 
	if (sipIsErr == NULL)
	{
		return PyList_Check(sipPy);
	}
 
	PyIndexList* index_list = new PyIndexList;
 
	for (int i = 0; i < PyList_GET_SIZE(sipPy); ++i)
	{
#if PY_MAJOR_VERSION < 3
		Index index = PyInt_AsLong(PyList_GET_ITEM(sipPy,i));
#else
		Index index = PyLong_AsLong(PyList_GET_ITEM(sipPy,i));
#endif
		index_list -> push_back(index);
	}
 
	*sipCppPtr = index_list;

	return 1;
%End
};

