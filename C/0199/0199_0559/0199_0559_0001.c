#include <stdlib.h>
signed char v1 (unsigned short, signed char, signed char);
signed char (*v2) (unsigned short, signed char, signed char) = v1;
extern signed int v3 (signed int, unsigned char, signed short);
extern signed int (*v4) (signed int, unsigned char, signed short);
extern signed char v5 (unsigned char, unsigned int, signed int);
extern signed char (*v6) (unsigned char, unsigned int, signed int);
extern unsigned short v7 (unsigned int, signed short);
extern unsigned short (*v8) (unsigned int, signed short);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
unsigned short v11 (signed short, unsigned char, unsigned char, unsigned short);
unsigned short (*v12) (signed short, unsigned char, unsigned char, unsigned short) = v11;
extern unsigned short v13 (signed char);
extern unsigned short (*v14) (signed char);
signed short v15 (unsigned int, unsigned int, signed short);
signed short (*v16) (unsigned int, unsigned int, signed short) = v15;
signed char v17 (void);
signed char (*v18) (void) = v17;
extern void v19 (unsigned short, unsigned short, signed int);
extern void (*v20) (unsigned short, unsigned short, signed int);
extern void v21 (unsigned short, signed char);
extern void (*v22) (unsigned short, signed char);
signed short v23 (signed char, signed short, signed char, unsigned short);
signed short (*v24) (signed char, signed short, signed char, unsigned short) = v23;
extern unsigned short v25 (unsigned int, signed short, signed char, signed short);
extern unsigned short (*v26) (unsigned int, signed short, signed char, signed short);
unsigned char v27 (signed char, unsigned short, signed short, unsigned char);
unsigned char (*v28) (signed char, unsigned short, signed short, unsigned char) = v27;
extern signed int v29 (unsigned int);
extern signed int (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v42 = 4U;
unsigned int v41 = 2U;
unsigned char v40 = 4;

unsigned char v27 (signed char v43, unsigned short v44, signed short v45, unsigned char v46)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
signed int v49 = -2;
signed char v48 = -1;
signed short v47 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v23 (signed char v50, signed short v51, signed char v52, unsigned short v53)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
unsigned int v56 = 1U;
unsigned short v55 = 3;
signed short v54 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (void)
{
{
for (;;) {
unsigned short v59 = 4;
signed char v58 = -2;
unsigned char v57 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (unsigned int v60, unsigned int v61, signed short v62)
{
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
unsigned short v65 = 0;
signed short v64 = -3;
signed char v63 = -4;
trace++;
switch (trace)
{
case 2: 
return v64;
case 4: 
return v64;
case 6: 
return v64;
default: abort ();
}
}
}
}

unsigned short v11 (signed short v66, unsigned char v67, unsigned char v68, unsigned short v69)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
unsigned char v72 = 1;
signed char v71 = 2;
unsigned char v70 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (unsigned short v73, signed char v74, signed char v75)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
unsigned int v78 = 5U;
unsigned int v77 = 6U;
signed char v76 = 0;
trace++;
switch (trace)
{
case 0: 
{
signed int v79;
unsigned char v80;
signed short v81;
signed int v82;
v79 = -4 - 1;
v80 = 0 + 0;
v81 = 0 - 0;
v82 = v3 (v79, v80, v81);
history[history_index++] = (int)v82;
}
break;
case 8: 
{
unsigned int v83;
signed int v84;
v83 = 1U + v78;
v84 = v29 (v83);
history[history_index++] = (int)v84;
}
break;
case 10: 
{
signed int v85;
unsigned char v86;
signed short v87;
signed int v88;
v85 = 0 - 1;
v86 = 2 + 0;
v87 = 0 + -4;
v88 = v3 (v85, v86, v87);
history[history_index++] = (int)v88;
}
break;
case 12: 
return v74;
default: abort ();
}
}
}
}
