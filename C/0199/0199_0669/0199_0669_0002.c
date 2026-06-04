#include <stdlib.h>
extern unsigned int v1 (signed char, unsigned short);
extern unsigned int (*v2) (signed char, unsigned short);
extern unsigned char v3 (signed short);
extern unsigned char (*v4) (signed short);
extern unsigned char v5 (unsigned int, signed int, unsigned char, unsigned short);
extern unsigned char (*v6) (unsigned int, signed int, unsigned char, unsigned short);
extern unsigned int v7 (signed int);
extern unsigned int (*v8) (signed int);
extern signed char v9 (signed short, signed char);
extern signed char (*v10) (signed short, signed char);
signed short v11 (void);
signed short (*v12) (void) = v11;
unsigned char v13 (unsigned char, signed char);
unsigned char (*v14) (unsigned char, signed char) = v13;
extern signed short v15 (signed char);
extern signed short (*v16) (signed char);
extern void v17 (unsigned int, unsigned int);
extern void (*v18) (unsigned int, unsigned int);
extern unsigned short v19 (signed short);
extern unsigned short (*v20) (signed short);
signed short v21 (void);
signed short (*v22) (void) = v21;
signed short v23 (void);
signed short (*v24) (void) = v23;
static signed int v25 (unsigned int);
static signed int (*v26) (unsigned int) = v25;
extern signed int v27 (void);
extern signed int (*v28) (void);
unsigned char v29 (unsigned int, unsigned int);
unsigned char (*v30) (unsigned int, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v71 = 3U;
unsigned int v70 = 6U;
signed char v69 = 0;

unsigned char v29 (unsigned int v72, unsigned int v73)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
unsigned int v76 = 4U;
unsigned int v75 = 4U;
signed char v74 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v25 (unsigned int v77)
{
history[history_index++] = (int)v77;
{
for (;;) {
unsigned short v80 = 6;
unsigned short v79 = 0;
unsigned char v78 = 4;
trace++;
switch (trace)
{
case 2: 
return -1;
case 4: 
{
signed int v81;
v81 = v27 ();
history[history_index++] = (int)v81;
}
break;
case 6: 
return -4;
default: abort ();
}
}
}
}

signed short v23 (void)
{
{
for (;;) {
signed char v84 = 0;
signed short v83 = 2;
signed int v82 = -4;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v85;
signed int v86;
v85 = 0U + 6U;
v86 = v25 (v85);
history[history_index++] = (int)v86;
}
break;
case 3: 
{
unsigned int v87;
signed int v88;
v87 = 2U + 4U;
v88 = v25 (v87);
history[history_index++] = (int)v88;
}
break;
case 7: 
{
signed int v89;
v89 = v27 ();
history[history_index++] = (int)v89;
}
break;
case 13: 
return v83;
default: abort ();
}
}
}
}

signed short v21 (void)
{
{
for (;;) {
unsigned char v92 = 5;
signed int v91 = 1;
signed int v90 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (unsigned char v93, signed char v94)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
unsigned short v97 = 6;
unsigned char v96 = 1;
signed int v95 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (void)
{
{
for (;;) {
unsigned short v100 = 4;
unsigned short v99 = 2;
signed short v98 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
