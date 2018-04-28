/*
 * Copyright (C) 2016 The CyanogenMod Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <string>
#include <cutils/native_handle.h>

extern "C" void _ZNK7android16SensorEventQueue12enableSensorEPKNS_6SensorE() {}

extern "C" void _ZN7android13GraphicBufferC1EjjijjjP13native_handleb(uint32_t inWidth, uint32_t inHeight, int inFormat,
            uint32_t inLayerCount, uint32_t inUsage, uint32_t inStride,
            native_handle_t* inHandle, bool keepOwnership);
            
extern "C" void _ZN7android13GraphicBufferC1EjjijjP13native_handleb(uint32_t inWidth, uint32_t inHeight, int inFormat,
            uint32_t inLayerCount, uint32_t inUsage,
            native_handle_t* inHandle, bool keepOwnership)
{
    _ZN7android13GraphicBufferC1EjjijjjP13native_handleb(inWidth, inHeight, inFormat, inLayerCount, inUsage, 0, inHandle, keepOwnership);
}
