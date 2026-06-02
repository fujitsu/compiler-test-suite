#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern unsigned char v3 (signed int, unsigned int);
extern unsigned char (*v4) (signed int, unsigned int);
extern signed int v5 (unsigned char, unsigned char, signed short, unsigned char);
extern signed int (*v6) (unsigned char, unsigned char, signed short, unsigned char);
unsigned int v7 (unsigned short, signed char, signed short);
unsigned int (*v8) (unsigned short, signed char, signed short) = v7;
unsigned char v9 (signed short, unsigned int);
unsigned char (*v10) (signed short, unsigned int) = v9;
extern signed short v11 (unsigned char);
extern signed short (*v12) (unsigned char);
unsigned int v13 (void);
unsigned int (*v14) (void) = v13;
void v15 (signed int, unsigned char);
void (*v16) (signed int, unsigned char) = v15;
extern signed int v17 (unsigned short, signed char, signed short);
extern signed int (*v18) (unsigned short, signed char, signed short);
static unsigned char v19 (signed int);
static unsigned char (*v20) (signed int) = v19;
extern void v21 (void);
extern void (*v22) (void);
unsigned int v23 (unsigned char, unsigned char, signed short, signed int);
unsigned int (*v24) (unsigned char, unsigned char, signed short, signed int) = v23;
extern signed short v25 (signed short, signed short);
extern signed short (*v26) (signed short, signed short);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
signed short v29 (unsigned char, signed short, unsigned char, unsigned short);
signed short (*v30) (unsigned char, signed short, unsigned char, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v42 = 0;
unsigned int v41 = 5U;
unsigned char v40 = 7;

signed short v29 (unsigned char v43, signed short v44, unsigned char v45, unsigned short v46)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
signed int v49 = -3;
unsigned char v48 = 4;
signed short v47 = -2;
trace++;
switch (trace)
{
case 1: 
return v47;
case 9: 
return 3;
case 11: 
return -1;
default: abort ();
}
}
}
}

unsigned int v23 (unsigned char v50, unsigned char v51, signed short v52, signed int v53)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
signed char v56 = -1;
signed short v55 = -3;
signed int v54 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v19 (signed int v57)
{
history[history_index++] = (int)v57;
{
for (;;) {
unsigned short v60 = 1;
signed short v59 = 2;
signed int v58 = -4;
trace++;
switch (trace)
{
case 7: 
return 0;
default: abort ();
}
}
}
}

void v15 (signed int v61, unsigned char v62)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
unsigned int v65 = 6U;
signed int v64 = -3;
unsigned short v63 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (void)
{
{
for (;;) {
unsigned char v68 = 6;
unsigned int v67 = 6U;
unsigned int v66 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (signed short v69, unsigned int v70)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
unsigned int v73 = 4U;
signed int v72 = 1;
signed int v71 = 2;
trace++;
switch (trace)
{
case 4: 
{
signed short v74;
signed short v75;
signed short v76;
v74 = v69 - -1;
v75 = -4 + 3;
v76 = v25 (v74, v75);
history[history_index++] = (int)v76;
}
break;
case 6: 
{
signed int v77;
unsigned char v78;
v77 = v72 + v71;
v78 = v19 (v77);
history[history_index++] = (int)v78;
}
break;
case 8: 
{
unsigned char v79;
signed short v80;
unsigned char v81;
unsigned short v82;
signed short v83;
v79 = 3 - 6;
v80 = v69 - 1;
v81 = 4 + 6;
v82 = 3 + 7;
v83 = v29 (v79, v80, v81, v82);
history[history_index++] = (int)v83;
}
break;
case 10: 
{
unsigned char v84;
signed short v85;
unsigned char v86;
unsigned short v87;
signed short v88;
v84 = 7 + 0;
v85 = -1 + 3;
v86 = 1 + 2;
v87 = 3 - 1;
v88 = v29 (v84, v85, v86, v87);
history[history_index++] = (int)v88;
}
break;
case 12: 
return 0;
default: abort ();
}
}
}
}

unsigned int v7 (unsigned short v89, signed char v90, signed short v91)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
unsigned int v94 = 2U;
signed short v93 = -2;
unsigned short v92 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
