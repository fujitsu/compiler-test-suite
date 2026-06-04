#include <stdlib.h>
void v1 (unsigned char, signed int, unsigned short, signed short);
void (*v2) (unsigned char, signed int, unsigned short, signed short) = v1;
extern signed int v3 (signed short);
extern signed int (*v4) (signed short);
extern unsigned char v5 (unsigned char, signed int, unsigned char, unsigned char);
extern unsigned char (*v6) (unsigned char, signed int, unsigned char, unsigned char);
extern void v7 (signed short, signed short, unsigned char, unsigned short);
extern void (*v8) (signed short, signed short, unsigned char, unsigned short);
extern signed short v9 (signed char);
extern signed short (*v10) (signed char);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern signed int v13 (void);
extern signed int (*v14) (void);
extern void v15 (unsigned char, signed int);
extern void (*v16) (unsigned char, signed int);
extern void v17 (unsigned char, unsigned int, unsigned int, signed char);
extern void (*v18) (unsigned char, unsigned int, unsigned int, signed char);
extern unsigned short v19 (signed short);
extern unsigned short (*v20) (signed short);
extern unsigned int v21 (unsigned char, signed char);
extern unsigned int (*v22) (unsigned char, signed char);
void v25 (unsigned short, unsigned short, signed int, unsigned short);
void (*v26) (unsigned short, unsigned short, signed int, unsigned short) = v25;
extern void v27 (void);
extern void (*v28) (void);
extern unsigned short v29 (signed char, signed short, signed int);
extern unsigned short (*v30) (signed char, signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v47 = -2;
unsigned char v46 = 6;
signed short v45 = 3;

void v25 (unsigned short v48, unsigned short v49, signed int v50, unsigned short v51)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
signed char v54 = 2;
signed char v53 = 1;
signed short v52 = -4;
trace++;
switch (trace)
{
case 3: 
{
signed char v55;
signed short v56;
signed int v57;
unsigned short v58;
v55 = v54 - 1;
v56 = -4 - 3;
v57 = -2 - v50;
v58 = v29 (v55, v56, v57);
history[history_index++] = (int)v58;
}
break;
case 5: 
{
signed char v59;
signed short v60;
signed int v61;
unsigned short v62;
v59 = 1 + -2;
v60 = v52 + -4;
v61 = v50 - -2;
v62 = v29 (v59, v60, v61);
history[history_index++] = (int)v62;
}
break;
case 7: 
return;
case 9: 
{
signed char v63;
signed short v64;
signed int v65;
unsigned short v66;
v63 = 0 + v54;
v64 = v52 - v52;
v65 = v50 - -1;
v66 = v29 (v63, v64, v65);
history[history_index++] = (int)v66;
}
break;
case 11: 
return;
default: abort ();
}
}
}
}

void v1 (unsigned char v67, signed int v68, unsigned short v69, signed short v70)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
unsigned char v73 = 4;
unsigned short v72 = 5;
signed short v71 = -3;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v74;
v74 = v11 ();
history[history_index++] = (int)v74;
}
break;
case 14: 
return;
default: abort ();
}
}
}
}
