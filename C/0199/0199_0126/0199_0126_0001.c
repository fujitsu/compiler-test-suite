#include <stdlib.h>
signed char v1 (void);
signed char (*v2) (void) = v1;
void v3 (unsigned int, unsigned short, signed char);
void (*v4) (unsigned int, unsigned short, signed char) = v3;
extern unsigned char v5 (signed int);
extern unsigned char (*v6) (signed int);
extern signed int v7 (unsigned short, unsigned int);
extern signed int (*v8) (unsigned short, unsigned int);
extern unsigned char v9 (unsigned int, signed char);
extern unsigned char (*v10) (unsigned int, signed char);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern unsigned short v13 (unsigned char, signed short, signed short, unsigned short);
extern unsigned short (*v14) (unsigned char, signed short, signed short, unsigned short);
extern void v15 (unsigned char, signed int, signed char);
extern void (*v16) (unsigned char, signed int, signed char);
extern signed int v17 (unsigned char);
extern signed int (*v18) (unsigned char);
extern unsigned short v19 (unsigned char, unsigned char);
extern unsigned short (*v20) (unsigned char, unsigned char);
extern signed char v21 (unsigned char);
extern signed char (*v22) (unsigned char);
signed int v23 (void);
signed int (*v24) (void) = v23;
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern signed short v27 (signed int, signed int);
extern signed short (*v28) (signed int, signed int);
unsigned int v29 (signed short, unsigned char, unsigned short, unsigned short);
unsigned int (*v30) (signed short, unsigned char, unsigned short, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v42 = 2;
signed char v41 = 3;
unsigned short v40 = 2;

unsigned int v29 (signed short v43, unsigned char v44, unsigned short v45, unsigned short v46)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
unsigned int v49 = 7U;
unsigned short v48 = 2;
signed int v47 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v23 (void)
{
{
for (;;) {
unsigned int v52 = 4U;
signed char v51 = -4;
signed short v50 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (unsigned int v53, unsigned short v54, signed char v55)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
unsigned int v58 = 4U;
unsigned char v57 = 0;
signed char v56 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (void)
{
{
for (;;) {
signed short v61 = 0;
signed short v60 = 3;
unsigned short v59 = 4;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v62;
signed int v63;
signed char v64;
v62 = 0 - 5;
v63 = 2 + -2;
v64 = -3 - 3;
v15 (v62, v63, v64);
}
break;
case 6: 
{
unsigned char v65;
signed short v66;
signed short v67;
unsigned short v68;
unsigned short v69;
v65 = 0 - 0;
v66 = v60 + -2;
v67 = 3 - v61;
v68 = v59 - 3;
v69 = v13 (v65, v66, v67, v68);
history[history_index++] = (int)v69;
}
break;
case 10: 
{
unsigned char v70;
signed int v71;
v70 = 2 - 3;
v71 = v17 (v70);
history[history_index++] = (int)v71;
}
break;
case 12: 
return 1;
default: abort ();
}
}
}
}
