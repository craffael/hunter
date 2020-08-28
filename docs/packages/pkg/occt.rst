.. spelling::

    occt

.. index::
  single: math ; occt

.. _pkg.occt:

occt
====
OpenCascade Community Technology

-  `Official <https://dev.opencascade.org/>`__
-  `Hunterized <https://github.com/cpp-pm/occt>`__
-  `Example <https://github.com/cpp-pm/hunter/blob/master/examples/occt/CMakeLists.txt>`__
-  Added by `craffael <https://github.com/craffael>`__ (`pr-N <https://github.com/cpp-pm/hunter/pull/N>`__)

.. literalinclude:: /../examples/occt/CMakeLists.txt
  :language: cmake
  :start-after: # DOCUMENTATION_START {
  :end-before: # DOCUMENTATION_END }
  
Notes
-----

- OpenCascade consists of a number of modules. This Hunterized version supports all modules except
  the `Draw Test Harness <https://www.opencascade.com/doc/occt-7.4.0/overview/html/technical_overview.html#OCCT_TOVW_SECTION_8>`__.
- To build shared versions of OpenCascade, please add the following to your `custom config <https://github.com/cpp-pm/gate#usage-custom-config>`__

  .. code-block:: cmake

    hunter_config(
        occt
        VERSION ${HUNTER_occt_VERSION}
        CMAKE_ARGS
          BUILD_SHARED_LIBS=On
    )
