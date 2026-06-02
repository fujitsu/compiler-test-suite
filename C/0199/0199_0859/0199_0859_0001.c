#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
signed char v3 (unsigned short, unsigned char, unsigned char, unsigned char);
signed char (*v4) (unsigned short, unsigned char, unsigned char, unsigned char) = v3;
extern signed short v5 (unsigned char, unsigned char);
extern signed short (*v6) (unsigned char, unsigned char);
extern signed char v7 (unsigned int, unsigned char, unsigned int);
extern signed char (*v8) (unsigned int, unsigned char, unsigned int);
extern void v9 (signed int, unsigned short, signed int);
extern void (*v10) (signed int, unsigned short, signed int);
extern unsigned short v11 (unsigned short, signed char, unsigned short);
extern unsigned short (*v12) (unsigned short, signed char, unsigned short);
extern unsigned short v13 (unsigned short);
extern unsigned short (*v14) (unsigned short);
void v15 (signed char, signed char);
void (*v16) (signed char, signed char) = v15;
unsigned short v19 (void);
unsigned short (*v20) (void) = v19;
extern signed char v21 (signed short, signed char, unsigned short, signed int);
extern signed char (*v22) (signed short, signed char, unsigned short, signed int);
extern signed short v23 (unsigned char, unsigned short, unsigned short, signed short);
extern signed short (*v24) (unsigned char, unsigned short, unsigned short, signed short);
extern signed int v25 (unsigned short);
extern signed int (*v26) (unsigned short);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern unsigned char v29 (unsigned int);
extern unsigned char (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v47 = 6;
unsigned short v46 = 6;
unsigned char v45 = 0;

unsigned short v19 (void)
{
{
for (;;) {
unsigned short v50 = 6;
unsigned char v49 = 5;
unsigned char v48 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (signed char v51, signed char v52)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
unsigned short v55 = 5;
signed char v54 = 1;
signed char v53 = -4;
trace++;
switch (trace)
{
case 3: 
{
signed short v56;
signed char v57;
unsigned short v58;
signed int v59;
signed char v60;
v56 = -3 + 3;
v57 = -1 + v53;
v58 = 1 + v55;
v59 = -1 + -4;
v60 = v21 (v56, v57, v58, v59);
history[history_index++] = (int)v60;
}
break;
case 7: 
return;
case 9: 
{
signed short v61;
signed char v62;
unsigned short v63;
signed int v64;
signed char v65;
v61 = -3 + -3;
v62 = v53 + v54;
v63 = 0 - 4;
v64 = -4 + -2;
v65 = v21 (v61, v62, v63, v64);
history[history_index++] = (int)v65;
}
break;
case 11: 
return;
default: abort ();
}
}
}
}

signed char v3 (unsigned short v66, unsigned char v67, unsigned char v68, unsigned char v69)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
signed short v72 = -3;
unsigned char v71 = 6;
signed short v70 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
