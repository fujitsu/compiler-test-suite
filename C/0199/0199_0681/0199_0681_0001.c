#include <stdlib.h>
extern signed char v1 (unsigned int, signed char);
extern signed char (*v2) (unsigned int, signed char);
extern unsigned char v3 (unsigned int, unsigned char, unsigned int);
extern unsigned char (*v4) (unsigned int, unsigned char, unsigned int);
void v5 (unsigned char, signed char);
void (*v6) (unsigned char, signed char) = v5;
void v7 (void);
void (*v8) (void) = v7;
extern signed int v11 (unsigned char, unsigned short, signed short, unsigned int);
extern signed int (*v12) (unsigned char, unsigned short, signed short, unsigned int);
extern signed short v13 (signed char, signed char, signed short);
extern signed short (*v14) (signed char, signed char, signed short);
unsigned short v15 (unsigned int, signed char, signed short);
unsigned short (*v16) (unsigned int, signed char, signed short) = v15;
extern signed char v17 (signed int, signed short);
extern signed char (*v18) (signed int, signed short);
extern signed int v19 (unsigned int);
extern signed int (*v20) (unsigned int);
signed char v21 (unsigned int);
signed char (*v22) (unsigned int) = v21;
extern signed short v23 (unsigned short);
extern signed short (*v24) (unsigned short);
extern unsigned char v25 (unsigned char);
extern unsigned char (*v26) (unsigned char);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
static signed short v29 (unsigned char, signed short, signed char, unsigned short);
static signed short (*v30) (unsigned char, signed short, signed char, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v51 = 3;
signed short v50 = -2;
unsigned int v49 = 6U;

static signed short v29 (unsigned char v52, signed short v53, signed char v54, unsigned short v55)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
unsigned int v58 = 1U;
unsigned char v57 = 2;
unsigned char v56 = 4;
trace++;
switch (trace)
{
case 5: 
return v53;
case 9: 
return 3;
default: abort ();
}
}
}
}

signed char v21 (unsigned int v59)
{
history[history_index++] = (int)v59;
{
for (;;) {
unsigned int v62 = 2U;
unsigned int v61 = 4U;
unsigned char v60 = 4;
trace++;
switch (trace)
{
case 4: 
{
unsigned char v63;
signed short v64;
signed char v65;
unsigned short v66;
signed short v67;
v63 = v60 + 6;
v64 = -4 + -2;
v65 = 1 - -2;
v66 = 0 + 2;
v67 = v29 (v63, v64, v65, v66);
history[history_index++] = (int)v67;
}
break;
case 6: 
{
unsigned char v68;
unsigned char v69;
v68 = 2 - v60;
v69 = v25 (v68);
history[history_index++] = (int)v69;
}
break;
case 8: 
{
unsigned char v70;
signed short v71;
signed char v72;
unsigned short v73;
signed short v74;
v70 = v60 + v60;
v71 = 0 + 1;
v72 = 0 - -1;
v73 = 7 + 0;
v74 = v29 (v70, v71, v72, v73);
history[history_index++] = (int)v74;
}
break;
case 10: 
{
unsigned char v75;
unsigned char v76;
v75 = v60 - v60;
v76 = v25 (v75);
history[history_index++] = (int)v76;
}
break;
case 12: 
return -1;
default: abort ();
}
}
}
}

unsigned short v15 (unsigned int v77, signed char v78, signed short v79)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
signed short v82 = 3;
signed char v81 = -2;
signed char v80 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (void)
{
{
for (;;) {
unsigned int v85 = 5U;
signed char v84 = 1;
signed int v83 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (unsigned char v86, signed char v87)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
signed char v90 = 2;
unsigned char v89 = 2;
unsigned char v88 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
