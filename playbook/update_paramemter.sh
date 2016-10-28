#!/bin/sh
source /data/migo/deploy/hestia/util/makefile/install.cfg
params_source_cfg=/data/migo/athena/lib/params_source.cfg
source_cfg=/data/migo/athena/lib/product_source.cfg

rm -rf /data/migo/athena/lib/params_source.cfg
touch /data/migo/athena/lib/params_source.cfg

echo "#### api information ####" >> ${params_source_cfg}
echo "et_api=${params_et_url}/api/et/laplace/tag" >> ${params_source_cfg}
echo "di_api=${params_et_url}/api/job/fetch_pandora" >> ${params_source_cfg}


test -e ${source_cfg} && unlink ${source_cfg}
ln -s /data/migo/athena/lib/params_source.cfg ${source_cfg}
