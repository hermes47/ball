// -*- Mode: C++; tab-width: 2; -*-
// vi: set ts=2:
//
// $Id$
//

class VersionInfo
{
%TypeHeaderCode
	#include <BALL/COMMON/version.h>
	using namespace BALL;
%End
  public:
  enum Type
  {
   STABLE,
   ALPHA,
   BETA,
   NONPUBLIC,
   UNKNOWN
  };
  static const char* getVersion();
  static int getMajorRevision();
  static int getMinorRevision();
  static Type getType();
	// __str__ method: just call getVersion
	SIP_PYOBJECT __str__();
%MethodCode
#if PY_MAJOR_VERSION < 3
  return PyString_FromString(VersionInfo::getVersion());  	
#else
  return PyUnicode_FromString(VersionInfo::getVersion());  	
#endif
%End 
};
