#include <stdlib.h>
extern unsigned char v1 (unsigned short, signed char, unsigned short);
extern unsigned char (*v2) (unsigned short, signed char, unsigned short);
extern signed short v3 (unsigned int, signed int, signed char, unsigned short);
extern signed short (*v4) (unsigned int, signed int, signed char, unsigned short);
extern signed int v5 (signed short);
extern signed int (*v6) (signed short);
extern signed int v7 (signed short, unsigned char);
extern signed int (*v8) (signed short, unsigned char);
extern unsigned int v9 (signed char, signed char, unsigned short);
extern unsigned int (*v10) (signed char, signed char, unsigned short);
unsigned short v11 (unsigned char);
unsigned short (*v12) (unsigned char) = v11;
unsigned char v13 (signed int, signed char);
unsigned char (*v14) (signed int, signed char) = v13;
signed int v15 (unsigned char, unsigned int);
signed int (*v16) (unsigned char, unsigned int) = v15;
extern unsigned char v17 (unsigned short, unsigned int, unsigned char, unsigned char);
extern unsigned char (*v18) (unsigned short, unsigned int, unsigned char, unsigned char);
unsigned char v19 (unsigned int, signed short, unsigned char, signed int);
unsigned char (*v20) (unsigned int, signed short, unsigned char, signed int) = v19;
extern signed int v21 (unsigned char, unsigned int, signed int);
extern signed int (*v22) (unsigned char, unsigned int, signed int);
extern signed int v23 (unsigned char);
extern signed int (*v24) (unsigned char);
signed int v25 (unsigned int, unsigned int);
signed int (*v26) (unsigned int, unsigned int) = v25;
extern void v27 (unsigned int, unsigned char, unsigned int);
extern void (*v28) (unsigned int, unsigned char, unsigned int);
extern signed int v29 (signed int);
extern signed int (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v52 = 2;
signed short v51 = -3;
signed char v50 = -3;

signed int v25 (unsigned int v53, unsigned int v54)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
signed int v57 = -4;
signed short v56 = 0;
unsigned int v55 = 3U;
trace++;
switch (trace)
{
case 2: 
{
unsigned int v58;
unsigned int v59;
signed int v60;
v58 = v53 + 0U;
v59 = v54 + v55;
v60 = v25 (v58, v59);
history[history_index++] = (int)v60;
}
break;
case 3: 
{
unsigned int v61;
unsigned int v62;
signed int v63;
v61 = v53 + v55;
v62 = 4U - v54;
v63 = v25 (v61, v62);
history[history_index++] = (int)v63;
}
break;
case 4: 
return v57;
case 5: 
return 3;
case 6: 
return 1;
default: abort ();
}
}
}
}

unsigned char v19 (unsigned int v64, signed short v65, unsigned char v66, signed int v67)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
unsigned int v70 = 0U;
unsigned char v69 = 1;
unsigned char v68 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v15 (unsigned char v71, unsigned int v72)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
unsigned char v75 = 6;
unsigned char v74 = 2;
signed char v73 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (signed int v76, signed char v77)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
unsigned char v80 = 6;
unsigned int v79 = 2U;
signed int v78 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v11 (unsigned char v81)
{
history[history_index++] = (int)v81;
{
for (;;) {
unsigned char v84 = 6;
unsigned int v83 = 5U;
unsigned char v82 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
