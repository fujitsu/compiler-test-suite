#include <stdlib.h>
extern signed int v1 (signed short, signed char);
extern signed int (*v2) (signed short, signed char);
extern unsigned char v3 (unsigned int, signed short);
extern unsigned char (*v4) (unsigned int, signed short);
extern unsigned char v5 (signed short, signed int, unsigned int, signed short);
extern unsigned char (*v6) (signed short, signed int, unsigned int, signed short);
extern signed short v7 (unsigned int, unsigned short, unsigned short);
extern signed short (*v8) (unsigned int, unsigned short, unsigned short);
void v9 (void);
void (*v10) (void) = v9;
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern void v13 (signed short, unsigned char, unsigned char);
extern void (*v14) (signed short, unsigned char, unsigned char);
extern signed int v15 (signed int, unsigned short, signed short);
extern signed int (*v16) (signed int, unsigned short, signed short);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern signed short v19 (unsigned short);
extern signed short (*v20) (unsigned short);
static signed int v21 (void);
static signed int (*v22) (void) = v21;
unsigned char v23 (unsigned short);
unsigned char (*v24) (unsigned short) = v23;
unsigned short v25 (void);
unsigned short (*v26) (void) = v25;
unsigned int v27 (signed int, unsigned char, unsigned int, unsigned char);
unsigned int (*v28) (signed int, unsigned char, unsigned int, unsigned char) = v27;
static unsigned int v29 (unsigned short, signed char, unsigned int, signed int);
static unsigned int (*v30) (unsigned short, signed char, unsigned int, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v60 = 2U;
signed int v59 = 3;
signed short v58 = -3;

static unsigned int v29 (unsigned short v61, signed char v62, unsigned int v63, signed int v64)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
unsigned char v67 = 3;
signed short v66 = -1;
unsigned int v65 = 0U;
trace++;
switch (trace)
{
case 8: 
return v63;
default: abort ();
}
}
}
}

unsigned int v27 (signed int v68, unsigned char v69, unsigned int v70, unsigned char v71)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
signed short v74 = 0;
unsigned char v73 = 7;
signed int v72 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v25 (void)
{
{
for (;;) {
signed int v77 = -2;
unsigned int v76 = 0U;
signed int v75 = 0;
trace++;
switch (trace)
{
case 1: 
return 7;
default: abort ();
}
}
}
}

unsigned char v23 (unsigned short v78)
{
history[history_index++] = (int)v78;
{
for (;;) {
signed short v81 = -2;
unsigned char v80 = 7;
unsigned int v79 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v21 (void)
{
{
for (;;) {
unsigned int v84 = 5U;
signed short v83 = -2;
unsigned int v82 = 4U;
trace++;
switch (trace)
{
case 5: 
return -2;
case 7: 
{
unsigned short v85;
signed char v86;
unsigned int v87;
signed int v88;
unsigned int v89;
v85 = 2 - 4;
v86 = -3 - -2;
v87 = 6U - v82;
v88 = -3 + -3;
v89 = v29 (v85, v86, v87, v88);
history[history_index++] = (int)v89;
}
break;
case 9: 
return -4;
case 11: 
return -2;
default: abort ();
}
}
}
}

void v9 (void)
{
{
for (;;) {
unsigned short v92 = 3;
unsigned short v91 = 7;
unsigned char v90 = 2;
trace++;
switch (trace)
{
case 4: 
{
signed int v93;
v93 = v21 ();
history[history_index++] = (int)v93;
}
break;
case 6: 
{
signed int v94;
v94 = v21 ();
history[history_index++] = (int)v94;
}
break;
case 10: 
{
signed int v95;
v95 = v21 ();
history[history_index++] = (int)v95;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}
