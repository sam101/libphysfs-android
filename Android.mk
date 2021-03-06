# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := physfs

LOCAL_CFLAGS := -O2 -DPHYSFS_NO_CDROM_SUPPORT

LOCAL_SRC_FILES :=    physfs.c \
    physfs_byteorder.c \
    physfs_unicode.c \
    platform/os2.c \
    platform/pocketpc.c \
    platform/posix.c \
    platform/unix.c \
    platform/macosx.c \
    platform/windows.c \
    archivers/dir.c \
    archivers/grp.c \
    archivers/hog.c \
    archivers/lzma.c \
    archivers/mvl.c \
    archivers/qpak.c \
    archivers/wad.c \
    archivers/zip.c \
    
include $(BUILD_SHARED_LIBRARY)
