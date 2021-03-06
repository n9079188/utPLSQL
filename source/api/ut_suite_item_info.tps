create or replace type ut_suite_item_info as object (
  /*
  utPLSQL - Version 3
  Copyright 2016 - 2018 utPLSQL Project

  Licensed under the Apache License, Version 2.0 (the "License"):
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
  */
  object_owner     varchar2( 250 ), -- the owner of test suite packages
  object_name      varchar2( 250 ), -- the name of test suite package
  item_name        varchar2( 250 ), -- the name of suite/test
  item_description varchar2( 250 ), -- the description of suite/suite item
  item_type        varchar2( 250 ), -- the type of item (UT_SUITE/UT_SUITE_CONTEXT/UT_TEST)
  item_line_no     integer,         -- line_number where annotation identifying the item exists
  path             varchar2( 4000 ),-- suitepath of the item
  disabled_flag    integer          -- 0 (zero) if item is not disabled, 1 if item is disabled by --%disabled annotation
)
/
