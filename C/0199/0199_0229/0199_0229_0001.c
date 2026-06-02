#include <stdlib.h>
void v1 (unsigned short, signed short);
void (*v2) (unsigned short, signed short) = v1;
extern signed short v3 (unsigned short, unsigned int, unsigned short, unsigned short);
extern signed short (*v4) (unsigned short, unsigned int, unsigned short, unsigned short);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern signed short v7 (unsigned short, unsigned int, unsigned char);
extern signed short (*v8) (unsigned short, unsigned int, unsigned char);
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
extern signed int v11 (signed int, signed char);
extern signed int (*v12) (signed int, signed char);
extern signed char v13 (unsigned int, signed int, unsigned char, signed int);
extern signed char (*v14) (unsigned int, signed int, unsigned char, signed int);
extern void v15 (void);
extern void (*v16) (void);
extern unsigned short v17 (signed int, signed short);
extern unsigned short (*v18) (signed int, signed short);
signed char v19 (signed int, signed int, unsigned short, unsigned short);
signed char (*v20) (signed int, signed int, unsigned short, unsigned short) = v19;
extern signed char v21 (signed int, unsigned short);
extern signed char (*v22) (signed int, unsigned short);
signed char v23 (unsigned char, unsigned int);
signed char (*v24) (unsigned char, unsigned int) = v23;
extern signed char v25 (void);
extern signed char (*v26) (void);
static unsigned int v27 (signed short);
static unsigned int (*v28) (signed short) = v27;
signed int v29 (unsigned char);
signed int (*v30) (unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v58 = 2;
signed char v57 = -3;
unsigned short v56 = 1;

signed int v29 (unsigned char v59)
{
history[history_index++] = (int)v59;
{
for (;;) {
signed char v62 = 1;
unsigned int v61 = 1U;
signed short v60 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v27 (signed short v63)
{
history[history_index++] = (int)v63;
{
for (;;) {
signed short v66 = -1;
signed int v65 = 1;
signed short v64 = 0;
trace++;
switch (trace)
{
case 3: 
return 4U;
case 5: 
return 0U;
case 7: 
return 0U;
case 9: 
return 4U;
case 11: 
return 4U;
default: abort ();
}
}
}
}

signed char v23 (unsigned char v67, unsigned int v68)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
signed int v71 = -2;
unsigned char v70 = 1;
unsigned int v69 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v19 (signed int v72, signed int v73, unsigned short v74, unsigned short v75)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
signed short v78 = 3;
signed short v77 = 0;
unsigned char v76 = 0;
trace++;
switch (trace)
{
case 2: 
{
signed short v79;
unsigned int v80;
v79 = -4 - -3;
v80 = v27 (v79);
history[history_index++] = (int)v80;
}
break;
case 4: 
{
signed short v81;
unsigned int v82;
v81 = v78 + v77;
v82 = v27 (v81);
history[history_index++] = (int)v82;
}
break;
case 6: 
{
signed short v83;
unsigned int v84;
v83 = v78 + v77;
v84 = v27 (v83);
history[history_index++] = (int)v84;
}
break;
case 8: 
{
signed short v85;
unsigned int v86;
v85 = -4 - 2;
v86 = v27 (v85);
history[history_index++] = (int)v86;
}
break;
case 10: 
{
signed short v87;
unsigned int v88;
v87 = 2 + v78;
v88 = v27 (v87);
history[history_index++] = (int)v88;
}
break;
case 12: 
return -4;
default: abort ();
}
}
}
}

void v1 (unsigned short v89, signed short v90)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
unsigned short v93 = 4;
unsigned char v92 = 5;
unsigned char v91 = 0;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v94;
v94 = v9 ();
history[history_index++] = (int)v94;
}
break;
case 14: 
return;
default: abort ();
}
}
}
}
