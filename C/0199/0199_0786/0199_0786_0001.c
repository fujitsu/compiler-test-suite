#include <stdlib.h>
extern void v1 (signed int, unsigned char, signed short);
extern void (*v2) (signed int, unsigned char, signed short);
unsigned int v3 (unsigned short, signed char);
unsigned int (*v4) (unsigned short, signed char) = v3;
extern signed int v5 (signed char, signed int);
extern signed int (*v6) (signed char, signed int);
extern void v7 (unsigned int);
extern void (*v8) (unsigned int);
extern signed char v9 (signed char, unsigned int, unsigned char);
extern signed char (*v10) (signed char, unsigned int, unsigned char);
extern unsigned char v11 (signed char, unsigned char);
extern unsigned char (*v12) (signed char, unsigned char);
signed char v13 (signed char, signed char);
signed char (*v14) (signed char, signed char) = v13;
extern unsigned short v17 (unsigned char, signed int, signed int, signed short);
extern unsigned short (*v18) (unsigned char, signed int, signed int, signed short);
unsigned int v19 (unsigned short, signed int, unsigned char, signed char);
unsigned int (*v20) (unsigned short, signed int, unsigned char, signed char) = v19;
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern unsigned short v23 (signed short);
extern unsigned short (*v24) (signed short);
extern unsigned int v25 (signed short, unsigned short);
extern unsigned int (*v26) (signed short, unsigned short);
extern signed int v27 (signed short, signed int, signed short, signed char);
extern signed int (*v28) (signed short, signed int, signed short, signed char);
unsigned char v29 (unsigned char, unsigned short, unsigned short, signed int);
unsigned char (*v30) (unsigned char, unsigned short, unsigned short, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v48 = 7;
signed short v47 = 3;
unsigned short v46 = 1;

unsigned char v29 (unsigned char v49, unsigned short v50, unsigned short v51, signed int v52)
{
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
signed short v55 = 1;
unsigned int v54 = 2U;
signed char v53 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (unsigned short v56, signed int v57, unsigned char v58, signed char v59)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
unsigned char v62 = 6;
unsigned char v61 = 1;
unsigned char v60 = 1;
trace++;
switch (trace)
{
case 4: 
return 0U;
case 8: 
{
unsigned char v63;
v63 = v21 ();
history[history_index++] = (int)v63;
}
break;
case 10: 
{
unsigned char v64;
v64 = v21 ();
history[history_index++] = (int)v64;
}
break;
case 12: 
return 1U;
default: abort ();
}
}
}
}

signed char v13 (signed char v65, signed char v66)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
signed int v69 = -1;
unsigned int v68 = 2U;
signed int v67 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (unsigned short v70, signed char v71)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
unsigned char v74 = 7;
unsigned int v73 = 7U;
signed char v72 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
