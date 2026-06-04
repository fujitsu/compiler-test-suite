#include <stdlib.h>
signed short v1 (signed short, signed short, unsigned char);
signed short (*v2) (signed short, signed short, unsigned char) = v1;
unsigned short v3 (signed int, signed int);
unsigned short (*v4) (signed int, signed int) = v3;
unsigned short v5 (unsigned int, signed int, unsigned char);
unsigned short (*v6) (unsigned int, signed int, unsigned char) = v5;
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
signed short v9 (unsigned int);
signed short (*v10) (unsigned int) = v9;
extern signed short v11 (void);
extern signed short (*v12) (void);
extern unsigned short v13 (unsigned int);
extern unsigned short (*v14) (unsigned int);
extern void v15 (void);
extern void (*v16) (void);
extern signed int v17 (unsigned int, unsigned short, unsigned int);
extern signed int (*v18) (unsigned int, unsigned short, unsigned int);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern unsigned short v21 (signed int, signed char, signed int);
extern unsigned short (*v22) (signed int, signed char, signed int);
extern signed int v23 (unsigned int);
extern signed int (*v24) (unsigned int);
signed short v25 (signed char, unsigned short, unsigned char);
signed short (*v26) (signed char, unsigned short, unsigned char) = v25;
extern void v27 (signed int, signed short, signed short);
extern void (*v28) (signed int, signed short, signed short);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v54 = 2;
unsigned char v53 = 5;
unsigned short v52 = 1;

signed short v25 (signed char v55, unsigned short v56, unsigned char v57)
{
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
{
for (;;) {
unsigned short v60 = 7;
signed int v59 = 0;
unsigned int v58 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (unsigned int v61)
{
history[history_index++] = (int)v61;
{
for (;;) {
signed short v64 = 0;
signed int v63 = 0;
unsigned int v62 = 0U;
trace++;
switch (trace)
{
case 3: 
{
signed short v65;
v65 = v29 ();
history[history_index++] = (int)v65;
}
break;
case 5: 
{
signed short v66;
v66 = v29 ();
history[history_index++] = (int)v66;
}
break;
case 7: 
return -2;
case 9: 
return v64;
case 11: 
return -3;
case 13: 
return 3;
default: abort ();
}
}
}
}

unsigned short v5 (unsigned int v67, signed int v68, unsigned char v69)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
signed char v72 = -4;
unsigned short v71 = 1;
unsigned int v70 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (signed int v73, signed int v74)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
unsigned char v77 = 0;
signed int v76 = -1;
unsigned int v75 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (signed short v78, signed short v79, unsigned char v80)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
unsigned int v83 = 0U;
signed int v82 = 1;
unsigned char v81 = 5;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v84;
signed int v85;
v84 = 2U + 4U;
v85 = v23 (v84);
history[history_index++] = (int)v85;
}
break;
case 16: 
return 3;
default: abort ();
}
}
}
}
