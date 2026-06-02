#include <stdlib.h>
extern signed int v1 (signed char, signed short, signed short);
extern signed int (*v2) (signed char, signed short, signed short);
extern signed int v3 (signed int, signed int);
extern signed int (*v4) (signed int, signed int);
extern void v5 (signed short, unsigned char);
extern void (*v6) (signed short, unsigned char);
extern unsigned short v7 (unsigned short, signed int, signed int);
extern unsigned short (*v8) (unsigned short, signed int, signed int);
unsigned int v9 (unsigned char);
unsigned int (*v10) (unsigned char) = v9;
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern void v13 (void);
extern void (*v14) (void);
extern signed int v15 (signed char);
extern signed int (*v16) (signed char);
extern unsigned int v17 (unsigned char, unsigned char, unsigned char);
extern unsigned int (*v18) (unsigned char, unsigned char, unsigned char);
extern unsigned short v19 (unsigned char, unsigned int);
extern unsigned short (*v20) (unsigned char, unsigned int);
signed short v21 (unsigned short, unsigned char, signed int);
signed short (*v22) (unsigned short, unsigned char, signed int) = v21;
extern void v23 (unsigned short, unsigned short, unsigned char);
extern void (*v24) (unsigned short, unsigned short, unsigned char);
signed int v25 (signed short, signed char, signed short);
signed int (*v26) (signed short, signed char, signed short) = v25;
signed int v27 (unsigned int, signed int, signed int);
signed int (*v28) (unsigned int, signed int, signed int) = v27;
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v55 = -3;
signed char v54 = -2;
signed char v53 = -3;

signed int v27 (unsigned int v56, signed int v57, signed int v58)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
signed char v61 = 1;
unsigned short v60 = 5;
unsigned char v59 = 3;
trace++;
switch (trace)
{
case 7: 
{
unsigned char v62;
v62 = v29 ();
history[history_index++] = (int)v62;
}
break;
case 9: 
{
unsigned char v63;
v63 = v29 ();
history[history_index++] = (int)v63;
}
break;
case 11: 
return v58;
default: abort ();
}
}
}
}

signed int v25 (signed short v64, signed char v65, signed short v66)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
unsigned char v69 = 4;
signed int v68 = 2;
signed short v67 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v21 (unsigned short v70, unsigned char v71, signed int v72)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
signed char v75 = 2;
unsigned short v74 = 0;
unsigned char v73 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (unsigned char v76)
{
history[history_index++] = (int)v76;
{
for (;;) {
signed char v79 = -4;
unsigned short v78 = 3;
signed char v77 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
