#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
extern unsigned short v3 (signed short, signed char, unsigned short, unsigned short);
extern unsigned short (*v4) (signed short, signed char, unsigned short, unsigned short);
signed char v5 (signed int, unsigned int, signed char);
signed char (*v6) (signed int, unsigned int, signed char) = v5;
extern unsigned short v7 (signed char, signed short, signed short);
extern unsigned short (*v8) (signed char, signed short, signed short);
extern signed int v9 (signed char, signed short, unsigned int, signed short);
extern signed int (*v10) (signed char, signed short, unsigned int, signed short);
static unsigned char v11 (unsigned char, signed short);
static unsigned char (*v12) (unsigned char, signed short) = v11;
extern unsigned char v13 (unsigned short, unsigned char, unsigned int);
extern unsigned char (*v14) (unsigned short, unsigned char, unsigned int);
extern unsigned char v15 (unsigned int, signed short);
extern unsigned char (*v16) (unsigned int, signed short);
signed char v17 (void);
signed char (*v18) (void) = v17;
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern unsigned short v21 (signed char);
extern unsigned short (*v22) (signed char);
unsigned char v23 (unsigned char, unsigned short, unsigned char, signed int);
unsigned char (*v24) (unsigned char, unsigned short, unsigned char, signed int) = v23;
unsigned char v25 (unsigned short);
unsigned char (*v26) (unsigned short) = v25;
unsigned int v27 (unsigned int, unsigned short);
unsigned int (*v28) (unsigned int, unsigned short) = v27;
signed short v29 (signed int, signed short, signed int, signed char);
signed short (*v30) (signed int, signed short, signed int, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v50 = 0U;
signed short v49 = -1;
unsigned char v48 = 7;

signed short v29 (signed int v51, signed short v52, signed int v53, signed char v54)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
unsigned int v57 = 2U;
unsigned short v56 = 0;
signed short v55 = -2;
trace++;
switch (trace)
{
case 5: 
return v55;
case 7: 
return v55;
default: abort ();
}
}
}
}

unsigned int v27 (unsigned int v58, unsigned short v59)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
unsigned short v62 = 6;
signed int v61 = 2;
unsigned short v60 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v25 (unsigned short v63)
{
history[history_index++] = (int)v63;
{
for (;;) {
signed short v66 = -3;
signed short v65 = 3;
signed short v64 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v23 (unsigned char v67, unsigned short v68, unsigned char v69, signed int v70)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
signed short v73 = -4;
unsigned char v72 = 1;
unsigned short v71 = 0;
trace++;
switch (trace)
{
case 1: 
return 2;
default: abort ();
}
}
}
}

signed char v17 (void)
{
{
for (;;) {
unsigned short v76 = 7;
unsigned int v75 = 1U;
unsigned int v74 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v11 (unsigned char v77, signed short v78)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
signed short v81 = 3;
unsigned char v80 = 0;
unsigned int v79 = 7U;
trace++;
switch (trace)
{
case 10: 
return v80;
default: abort ();
}
}
}
}

signed char v5 (signed int v82, unsigned int v83, signed char v84)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
signed char v87 = -3;
unsigned char v86 = 2;
unsigned short v85 = 5;
trace++;
switch (trace)
{
case 3: 
{
signed char v88;
signed short v89;
signed short v90;
unsigned short v91;
v88 = v84 - -2;
v89 = -2 - -1;
v90 = 2 + -3;
v91 = v7 (v88, v89, v90);
history[history_index++] = (int)v91;
}
break;
case 9: 
{
unsigned char v92;
signed short v93;
unsigned char v94;
v92 = 3 - 7;
v93 = -3 + -4;
v94 = v11 (v92, v93);
history[history_index++] = (int)v94;
}
break;
case 11: 
return v84;
default: abort ();
}
}
}
}
