#include <stdlib.h>
extern unsigned char v1 (unsigned int, signed char);
extern unsigned char (*v2) (unsigned int, signed char);
extern signed short v3 (unsigned char);
extern signed short (*v4) (unsigned char);
extern signed int v5 (unsigned char);
extern signed int (*v6) (unsigned char);
extern void v7 (signed char, signed char, unsigned char, unsigned char);
extern void (*v8) (signed char, signed char, unsigned char, unsigned char);
extern signed char v9 (unsigned int);
extern signed char (*v10) (unsigned int);
unsigned int v11 (signed short, signed short);
unsigned int (*v12) (signed short, signed short) = v11;
unsigned short v13 (signed int, unsigned short);
unsigned short (*v14) (signed int, unsigned short) = v13;
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern signed short v17 (signed short);
extern signed short (*v18) (signed short);
extern signed short v19 (void);
extern signed short (*v20) (void);
extern void v21 (signed char);
extern void (*v22) (signed char);
extern void v23 (signed int);
extern void (*v24) (signed int);
extern signed int v25 (unsigned short, signed char, unsigned short, signed short);
extern signed int (*v26) (unsigned short, signed char, unsigned short, signed short);
void v27 (unsigned short, signed int, unsigned short);
void (*v28) (unsigned short, signed int, unsigned short) = v27;
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v55 = 1;
signed short v54 = -3;
unsigned char v53 = 2;

void v27 (unsigned short v56, signed int v57, unsigned short v58)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
unsigned short v61 = 1;
signed short v60 = 3;
unsigned char v59 = 6;
trace++;
switch (trace)
{
case 5: 
{
signed short v62;
v62 = v29 ();
history[history_index++] = (int)v62;
}
break;
case 7: 
{
signed short v63;
v63 = v29 ();
history[history_index++] = (int)v63;
}
break;
case 9: 
{
signed short v64;
v64 = v29 ();
history[history_index++] = (int)v64;
}
break;
case 11: 
return;
default: abort ();
}
}
}
}

unsigned short v13 (signed int v65, unsigned short v66)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
unsigned short v69 = 6;
unsigned char v68 = 7;
signed int v67 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (signed short v70, signed short v71)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
signed short v74 = 2;
signed short v73 = 1;
signed char v72 = -3;
trace++;
switch (trace)
{
case 1: 
{
signed short v75;
v75 = v19 ();
history[history_index++] = (int)v75;
}
break;
case 3: 
{
signed short v76;
v76 = v19 ();
history[history_index++] = (int)v76;
}
break;
case 13: 
return 3U;
default: abort ();
}
}
}
}
