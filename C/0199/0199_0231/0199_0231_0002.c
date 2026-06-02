#include <stdlib.h>
extern signed char v1 (signed char, signed int);
extern signed char (*v2) (signed char, signed int);
signed int v3 (signed char);
signed int (*v4) (signed char) = v3;
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern signed char v7 (signed short, unsigned int, signed short, signed short);
extern signed char (*v8) (signed short, unsigned int, signed short, signed short);
signed int v9 (unsigned char, unsigned int);
signed int (*v10) (unsigned char, unsigned int) = v9;
extern signed short v11 (void);
extern signed short (*v12) (void);
signed short v13 (unsigned char);
signed short (*v14) (unsigned char) = v13;
extern signed short v15 (unsigned char, signed int, unsigned int);
extern signed short (*v16) (unsigned char, signed int, unsigned int);
extern signed int v17 (signed char, signed short);
extern signed int (*v18) (signed char, signed short);
unsigned int v19 (signed int);
unsigned int (*v20) (signed int) = v19;
extern signed int v21 (void);
extern signed int (*v22) (void);
extern unsigned int v23 (signed short, unsigned int, unsigned short, signed int);
extern unsigned int (*v24) (signed short, unsigned int, unsigned short, signed int);
unsigned char v25 (unsigned char, unsigned short, unsigned short, signed char);
unsigned char (*v26) (unsigned char, unsigned short, unsigned short, signed char) = v25;
extern unsigned short v27 (signed int, unsigned int, unsigned int);
extern unsigned short (*v28) (signed int, unsigned int, unsigned int);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v62 = 3;
unsigned char v61 = 2;
signed short v60 = 2;

unsigned char v25 (unsigned char v63, unsigned short v64, unsigned short v65, signed char v66)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
signed short v69 = 0;
signed char v68 = -3;
signed char v67 = -3;
trace++;
switch (trace)
{
case 1: 
return 7;
default: abort ();
}
}
}
}

unsigned int v19 (signed int v70)
{
history[history_index++] = (int)v70;
{
for (;;) {
signed int v73 = 3;
unsigned char v72 = 1;
signed char v71 = 2;
trace++;
switch (trace)
{
case 9: 
return 2U;
default: abort ();
}
}
}
}

signed short v13 (unsigned char v74)
{
history[history_index++] = (int)v74;
{
for (;;) {
signed int v77 = 1;
unsigned int v76 = 0U;
signed int v75 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (unsigned char v78, unsigned int v79)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
signed short v82 = 1;
unsigned short v81 = 5;
unsigned int v80 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (signed char v83)
{
history[history_index++] = (int)v83;
{
for (;;) {
signed short v86 = 3;
signed short v85 = 1;
signed char v84 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
