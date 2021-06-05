# SPDX-FileCopyrightText: 2020 Efabless Corporation
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
# SPDX-License-Identifier: Apache-2.0

set script_dir [file dirname [file normalize [info script]]]

set ::env(DESIGN_NAME) user_proj_example

set ::env(VERILOG_FILES) "\
	$script_dir/../../caravel/verilog/rtl/defines.v \
	$script_dir/../../verilog/rtl/user_proj_example.v"

set ::env(CLOCK_PORT) "wb_clk_i"
set ::env(CLOCK_NET) ""
set ::env(CLOCK_PERIOD) "10"

set ::env(MACRO_PLACEMENT_CFG) $script_dir/macro.cfg

set ::env(VERILOG_FILES_BLACKBOX) "\
        $script_dir/../../verilog/rtl/design.v"

set ::env(EXTRA_LEFS) "\
	$script_dir/../../lef/design.lef"

set ::env(EXTRA_GDS_FILES) "\
	$script_dir/../../gds/design_merged.gds"

#set ::env(GLB_RT_MAXLAYER) 5

set ::env(FP_PDN_CHECK_NODES) 0

#set ::env(SYNTH_TOP_LEVEL) 1
#set ::env(PL_RANDOM_GLB_PLACEMENT) 1

set ::env(PL_RESIZER_DESIGN_OPTIMIZATIONS) 0
set ::env(PL_RESIZER_TIMING_OPTIMIZATIONS) 0
set ::env(PL_RESIZER_BUFFER_INPUT_PORTS) 0
set ::env(PL_RESIZER_BUFFER_OUTPUT_PORTS) 0

set ::env(DIODE_INSERTION_STRATEGY) 0
set ::env(FILL_INSERTION) 0
set ::env(TAP_DECAP_INSERTION) 0


set ::env(CLOCK_TREE_SYNTH) 0

set ::env(FP_SIZING) absolute
set ::env(DIE_AREA) "0 0 900 600"
set ::env(DESIGN_IS_CORE) 0

set ::env(VDD_NETS) [list {vccd1} {vccd2} {vdda1} {vdda2}]
set ::env(GND_NETS) [list {vssd1} {vssd2} {vssa1} {vssa2}]

set ::env(FP_PIN_ORDER_CFG) $script_dir/pin_order.cfg

set ::env(PL_BASIC_PLACEMENT) 1
set ::env(PL_TARGET_DENSITY) 0.05

#set ::env(PL_TARGET_DENSITY) 0.5
#set ::env(FP_CORE_UTIL) 5
#set ::env(PL_SKIP_INITIAL_PLACEMENT) 1

#set ::env(FP_PDN_VOFFSET) 4
#set ::env(FP_PDN_VPITCH) 15
#set ::env(FP_PDN_HOFFSET) 4
#set ::env(FP_PDN_HPITCH) 15
#
# If you're going to use multiple power domains, then keep this disabled.
set ::env(RUN_CVC) 0
