ENV ONEAPI_ROOT=/opt/intel/oneapi
ENV DPCPP_ROOT=${ONEAPI_ROOT}/compiler/latest/linux
ENV MKL_DPCPP_ROOT=${ONEAPI_ROOT}/mkl/latest
ENV SYCLROOT=${DPCPP_ROOT}
ENV LD_LIBRARY_PATH=${DPCPP_ROOT}/lib:${DPCPP_ROOT}/compiler/lib/intel64_lin:${LD_LIBRARY_PATH}
ENV LD_LIBRARY_PATH=${MKL_DPCPP_ROOT}/lib:${MKL_DPCPP_ROOT}/lib64:${MKL_DPCPP_ROOT}/lib/intel64:${LD_LIBRARY_PATH}
ENV INTELOCLSDKROOT=${DPCPP_ROOT}
ENV PATH=${DPCPP_ROOT}/bin:${PATH}
ENV CXX=$DPCPP_ROOT/bin/clang++
ENV CPATH=$DPCPP_ROOT/include:$CPATH

ENV USE_AOT_DEVLIST='xe_hp_sdv'
