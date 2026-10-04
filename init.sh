#!/bin/bash
# ---------------------------------------------------------------------------
# init.sh — sync the SA-Det3D code (src/) + configs into the OpenPCDet sub-repo.
#
# `src/` and `configs/` in THIS repo are the source of truth. `OpenPCDet/` is
# a cloned dependency; the files written below are GENERATED. Run this script
# after any change to src/ or configs/. It is idempotent (cp -r overwrites).
#
# Do NOT commit the resulting OpenPCDet/ modifications back to the sub-repo —
# that recreates the symlink / stale-pointer drift this script is meant to
# avoid. The only thing tracked about OpenPCDet/ is the submodule POINTER.
# ---------------------------------------------------------------------------

# copy files
cp -r src/models/backbones_2d/* OpenPCDet/pcdet/models/backbones_2d/

cp -r src/models/backbones_3d/*.py OpenPCDet/pcdet/models/backbones_3d/
cp -r src/models/backbones_3d/pfe/* OpenPCDet/pcdet/models/backbones_3d/pfe/
cp -r src/models/backbones_3d/cfe OpenPCDet/pcdet/models/backbones_3d/

cp -r src/models/detectors/* OpenPCDet/pcdet/models/detectors/

cp -r src/ops/pointnet2/pointnet2_stack/* OpenPCDet/pcdet/ops/pointnet2/pointnet2_stack/
cp -r src/ops/pointnet2/pointnet2_batch/* OpenPCDet/pcdet/ops/pointnet2/pointnet2_batch/

cp -r src/tools/* OpenPCDet/tools/

cp -r configs/* OpenPCDet/tools/cfgs/kitti_models/

cp -r requirements.txt OpenPCDet/


