#include <stdio.h>
#include <stdlib.h>
extern void v1 (signed int, signed char, unsigned short, signed int);
extern void (*v2) (signed int, signed char, unsigned short, signed int);
unsigned short v3 (unsigned char, unsigned char, unsigned int);
unsigned short (*v4) (unsigned char, unsigned char, unsigned int) = v3;
extern void v5 (unsigned char);
extern void (*v6) (unsigned char);
extern signed char v7 (signed char, unsigned char, signed short, signed int);
extern signed char (*v8) (signed char, unsigned char, signed short, signed int);
extern signed short v9 (void);
extern signed short (*v10) (void);
extern signed char v11 (unsigned short, signed char);
extern signed char (*v12) (unsigned short, signed char);
signed char v13 (signed int);
signed char (*v14) (signed int) = v13;
extern signed int v15 (signed int, signed short, signed char);
extern signed int (*v16) (signed int, signed short, signed char);
signed short v17 (unsigned char, signed short, signed int);
signed short (*v18) (unsigned char, signed short, signed int) = v17;
extern signed int v19 (void);
extern signed int (*v20) (void);
unsigned short v21 (unsigned short);
unsigned short (*v22) (unsigned short) = v21;
extern signed char v23 (unsigned char, signed short);
extern signed char (*v24) (unsigned char, signed short);
extern unsigned short v25 (signed char, unsigned char, signed int, unsigned short);
extern unsigned short (*v26) (signed char, unsigned char, signed int, unsigned short);
extern unsigned int v27 (signed int);
extern unsigned int (*v28) (signed int);
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -3;
unsigned short v32 = 0;
unsigned char v31 = 4;

unsigned short v21 (unsigned short v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned char v37 = 3;
unsigned short v36 = 2;
signed int v35 = -4;
trace++;
switch (trace)
{
case 4: 
{
signed short v38;
v38 = v9 ();
history[history_index++] = (int)v38;
}
break;
case 14: 
return v34;
default: abort ();
}
}
}
}

signed short v17 (unsigned char v39, signed short v40, signed int v41)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
unsigned int v44 = 6U;
signed int v43 = -2;
unsigned char v42 = 4;
trace++;
switch (trace)
{
case 6: 
{
signed char v45;
unsigned char v46;
signed int v47;
unsigned short v48;
unsigned short v49;
v45 = 1 + 1;
v46 = v39 - v42;
v47 = 2 + 3;
v48 = 5 + 4;
v49 = v25 (v45, v46, v47, v48);
history[history_index++] = (int)v49;
}
break;
case 8: 
{
unsigned char v50;
v50 = v29 ();
history[history_index++] = (int)v50;
}
break;
case 10: 
{
signed char v51;
unsigned char v52;
signed int v53;
unsigned short v54;
unsigned short v55;
v51 = -3 - 0;
v52 = v42 + 5;
v53 = v43 - -1;
v54 = 0 - 5;
v55 = v25 (v51, v52, v53, v54);
history[history_index++] = (int)v55;
}
break;
case 12: 
return v40;
default: abort ();
}
}
}
}

signed char v13 (signed int v56)
{
history[history_index++] = (int)v56;
{
for (;;) {
unsigned char v59 = 1;
signed int v58 = 1;
unsigned int v57 = 6U;
trace++;
switch (trace)
{
case 1: 
return 2;
default: abort ();
}
}
}
}

unsigned short v3 (unsigned char v60, unsigned char v61, unsigned int v62)
{
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
signed short v65 = 3;
unsigned int v64 = 3U;
signed short v63 = 0;
trace++;
switch (trace)
{
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
signed int v68;
signed char v69;
unsigned short v70;
signed int v71;
v68 = -1 - -4;
v69 = -1 - 3;
v70 = v32 - 5;
v71 = 1 + 3;
v1 (v68, v69, v70, v71);
}
} while (trace < 15);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
