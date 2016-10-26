# -----------------------------------------------------------------
# --- Set the name of your AddOn
# -----------------------------------------------------------------

set( NAME_ADDON     ofxPiMapper )

#==================================================================
#==================================================================
# -----------------------------------------------------------------
# ---------------------------- PATHS ------------------------------
# -----------------------------------------------------------------
set( PATH_SOURCE    ${OF_DIRECTORY_ABSOLUTE}/addons/${NAME_ADDON}/src )
set( PATH_LIBS      ${OF_DIRECTORY_ABSOLUTE}/addons/${NAME_ADDON}/libs )

# --- Setting abolute path to prevent errors
get_filename_component( PATH_SOURCE_ABSOLUTE ${PATH_SOURCE} ABSOLUTE)
get_filename_component( PATH_LIBS_ABSOLUTE ${PATH_LIBS} ABSOLUTE)

# -----------------------------------------------------------------
# ---------------------------- SOURCE -----------------------------
# -----------------------------------------------------------------

file( GLOB_RECURSE   OFX_ADDON_CPP   "${PATH_SOURCE_ABSOLUTE}/*.cpp" )
add_library(  ${NAME_ADDON}   STATIC   ${OFX_ADDON_CPP} )

# -----------------------------------------------------------------
# ---------------------------- HEADERS ----------------------------
# -----------------------------------------------------------------

find_header_directories( HEADERS_SOURCE ${PATH_SOURCE_ABSOLUTE} )
include_directories( ${HEADERS_SOURCE} )

find_header_directories( HEADERS_LIBS ${PATH_LIBS_ABSOLUTE} )
include_directories( ${HEADERS_LIBS} )

# -----------------------------------------------------------------
# ------------------------------ LIBS  ----------------------------
# -----------------------------------------------------------------
