#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (signed short, unsigned short, signed short);
extern unsigned char (*v2) (signed short, unsigned short, signed short);
extern unsigned char v3 (unsigned char);
extern unsigned char (*v4) (unsigned char);
signed int v7 (signed int, signed short);
signed int (*v8) (signed int, signed short) = v7;
unsigned short v9 (unsigned short, signed int, signed char);
unsigned short (*v10) (unsigned short, signed int, signed char) = v9;
extern signed short v11 (signed int, signed int);
extern signed short (*v12) (signed int, signed int);
unsigned int v13 (signed short, signed short, unsigned char, signed short);
unsigned int (*v14) (signed short, signed short, unsigned char, signed short) = v13;
extern unsigned short v15 (signed int, signed int);
extern unsigned short (*v16) (signed int, signed int);
extern signed short v17 (unsigned char, signed short, signed char, unsigned int);
extern signed short (*v18) (unsigned char, signed short, signed char, unsigned int);
extern signed short v19 (void);
extern signed short (*v20) (void);
unsigned char v21 (signed int, signed char);
unsigned char (*v22) (signed int, signed char) = v21;
extern unsigned int v23 (unsigned int);
extern unsigned int (*v24) (unsigned int);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern unsigned short v27 (signed short, signed char);
extern unsigned short (*v28) (signed short, signed char);
unsigned char v29 (unsigned short, unsigned short, signed short, unsigned short);
unsigned char (*v30) (unsigned short, unsigned short, signed short, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 7;
unsigned int v32 = 6U;
unsigned char v31 = 6;

unsigned char v29 (unsigned short v34, unsigned short v35, signed short v36, unsigned short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed short v40 = -2;
unsigned int v39 = 2U;
unsigned short v38 = 3;
trace++;
switch (trace)
{
case 11: 
return 2;
default: abort ();
}
}
}
}

unsigned char v21 (signed int v41, signed char v42)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
unsigned char v45 = 6;
signed int v44 = -1;
signed short v43 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (signed short v46, signed short v47, unsigned char v48, signed short v49)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
unsigned int v52 = 0U;
unsigned int v51 = 6U;
unsigned char v50 = 4;
trace++;
switch (trace)
{
case 2: 
return v51;
case 4: 
return v51;
default: abort ();
}
}
}
}

unsigned short v9 (unsigned short v53, signed int v54, signed char v55)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
unsigned short v58 = 3;
signed char v57 = 1;
signed int v56 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (signed int v59, signed short v60)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
unsigned short v63 = 5;
unsigned char v62 = 4;
signed int v61 = 3;
trace++;
switch (trace)
{
case 6: 
{
signed int v64;
signed int v65;
signed short v66;
v64 = v59 - 1;
v65 = v61 + 1;
v66 = v11 (v64, v65);
history[history_index++] = (int)v66;
}
break;
case 14: 
return 1;
default: abort ();
}
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
signed short v69;
unsigned short v70;
signed short v71;
unsigned char v72;
v69 = 3 - 2;
v70 = 4 + 6;
v71 = 2 + 0;
v72 = v1 (v69, v70, v71);
history[history_index++] = (int)v72;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
