#include <stdlib.h>
extern signed short v1 (signed int);
extern signed short (*v2) (signed int);
extern unsigned int v5 (signed int);
extern unsigned int (*v6) (signed int);
extern unsigned char v7 (signed short, signed short);
extern unsigned char (*v8) (signed short, signed short);
extern signed char v9 (void);
extern signed char (*v10) (void);
signed int v11 (signed int, signed short, unsigned char);
signed int (*v12) (signed int, signed short, unsigned char) = v11;
extern signed char v13 (signed char, signed char, signed short, signed char);
extern signed char (*v14) (signed char, signed char, signed short, signed char);
extern signed char v15 (signed int, unsigned char, signed char, signed short);
extern signed char (*v16) (signed int, unsigned char, signed char, signed short);
extern void v17 (unsigned short, unsigned short, unsigned char);
extern void (*v18) (unsigned short, unsigned short, unsigned char);
extern unsigned char v19 (unsigned char);
extern unsigned char (*v20) (unsigned char);
signed char v21 (signed char, signed int);
signed char (*v22) (signed char, signed int) = v21;
unsigned int v23 (unsigned int, unsigned short, signed short);
unsigned int (*v24) (unsigned int, unsigned short, signed short) = v23;
extern signed char v25 (void);
extern signed char (*v26) (void);
extern void v27 (unsigned short, signed char, unsigned char);
extern void (*v28) (unsigned short, signed char, unsigned char);
signed int v29 (unsigned char, unsigned char, signed char, unsigned short);
signed int (*v30) (unsigned char, unsigned char, signed char, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v50 = 0;
unsigned int v49 = 0U;
signed char v48 = 0;

signed int v29 (unsigned char v51, unsigned char v52, signed char v53, unsigned short v54)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
unsigned char v57 = 1;
unsigned char v56 = 6;
signed char v55 = 0;
trace++;
switch (trace)
{
case 4: 
return -1;
default: abort ();
}
}
}
}

unsigned int v23 (unsigned int v58, unsigned short v59, signed short v60)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
signed char v63 = 1;
signed short v62 = -3;
unsigned int v61 = 2U;
trace++;
switch (trace)
{
case 10: 
return 3U;
default: abort ();
}
}
}
}

signed char v21 (signed char v64, signed int v65)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
signed char v68 = 0;
unsigned int v67 = 1U;
unsigned char v66 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (signed int v69, signed short v70, unsigned char v71)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
unsigned char v74 = 5;
unsigned short v73 = 3;
signed int v72 = -1;
trace++;
switch (trace)
{
case 2: 
{
signed char v75;
v75 = v25 ();
history[history_index++] = (int)v75;
}
break;
case 6: 
{
unsigned char v76;
unsigned char v77;
v76 = 2 - v74;
v77 = v19 (v76);
history[history_index++] = (int)v77;
}
break;
case 8: 
return v69;
default: abort ();
}
}
}
}
