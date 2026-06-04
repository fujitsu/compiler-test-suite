#include <stdlib.h>
extern unsigned int v1 (signed int, signed short);
extern unsigned int (*v2) (signed int, signed short);
extern signed char v3 (unsigned int, unsigned char, unsigned int);
extern signed char (*v4) (unsigned int, unsigned char, unsigned int);
extern unsigned int v5 (signed char, unsigned int, signed int);
extern unsigned int (*v6) (signed char, unsigned int, signed int);
extern unsigned int v7 (unsigned char, unsigned int, unsigned short, unsigned char);
extern unsigned int (*v8) (unsigned char, unsigned int, unsigned short, unsigned char);
extern signed short v9 (unsigned char, unsigned int, unsigned char);
extern signed short (*v10) (unsigned char, unsigned int, unsigned char);
signed char v11 (signed short, signed char, signed short);
signed char (*v12) (signed short, signed char, signed short) = v11;
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern signed int v17 (unsigned int, signed short, unsigned int);
extern signed int (*v18) (unsigned int, signed short, unsigned int);
signed int v19 (signed short, unsigned char, signed short);
signed int (*v20) (signed short, unsigned char, signed short) = v19;
extern signed short v21 (unsigned int, signed char);
extern signed short (*v22) (unsigned int, signed char);
extern unsigned int v23 (signed char, signed char);
extern unsigned int (*v24) (signed char, signed char);
extern void v25 (void);
extern void (*v26) (void);
signed int v27 (signed short, signed int);
signed int (*v28) (signed short, signed int) = v27;
signed short v29 (unsigned short);
signed short (*v30) (unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v47 = 1;
signed char v46 = 0;
unsigned short v45 = 6;

signed short v29 (unsigned short v48)
{
history[history_index++] = (int)v48;
{
for (;;) {
signed int v51 = -2;
signed char v50 = -4;
signed short v49 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v27 (signed short v52, signed int v53)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
signed int v56 = -1;
signed short v55 = -3;
signed short v54 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (signed short v57, unsigned char v58, signed short v59)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
unsigned short v62 = 7;
unsigned int v61 = 2U;
unsigned char v60 = 1;
trace++;
switch (trace)
{
case 8: 
return -4;
case 10: 
return -3;
default: abort ();
}
}
}
}

signed char v11 (signed short v63, signed char v64, signed short v65)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
signed char v68 = -3;
unsigned int v67 = 2U;
unsigned char v66 = 5;
trace++;
switch (trace)
{
case 1: 
{
signed char v69;
signed char v70;
unsigned int v71;
v69 = 3 - -3;
v70 = -3 + v64;
v71 = v23 (v69, v70);
history[history_index++] = (int)v71;
}
break;
case 3: 
{
signed char v72;
signed char v73;
unsigned int v74;
v72 = 2 - v64;
v73 = v68 - 3;
v74 = v23 (v72, v73);
history[history_index++] = (int)v74;
}
break;
case 5: 
return v64;
default: abort ();
}
}
}
}
