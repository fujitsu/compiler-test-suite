#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (signed short, unsigned short, signed char, signed char);
extern signed short (*v2) (signed short, unsigned short, signed char, signed char);
unsigned int v3 (signed char, unsigned char, unsigned short);
unsigned int (*v4) (signed char, unsigned char, unsigned short) = v3;
extern unsigned char v5 (unsigned int);
extern unsigned char (*v6) (unsigned int);
extern unsigned char v7 (unsigned short, unsigned short, signed char);
extern unsigned char (*v8) (unsigned short, unsigned short, signed char);
extern signed int v9 (void);
extern signed int (*v10) (void);
signed char v11 (unsigned int);
signed char (*v12) (unsigned int) = v11;
extern signed char v13 (signed short, signed char, signed char);
extern signed char (*v14) (signed short, signed char, signed char);
extern signed short v15 (unsigned short, unsigned char, signed char, unsigned char);
extern signed short (*v16) (unsigned short, unsigned char, signed char, unsigned char);
unsigned short v17 (unsigned int, unsigned short);
unsigned short (*v18) (unsigned int, unsigned short) = v17;
extern signed char v19 (unsigned short, unsigned char, unsigned short, signed int);
extern signed char (*v20) (unsigned short, unsigned char, unsigned short, signed int);
extern void v21 (signed int, unsigned char, signed short, signed char);
extern void (*v22) (signed int, unsigned char, signed short, signed char);
extern signed char v23 (signed int, signed short);
extern signed char (*v24) (signed int, signed short);
extern unsigned int v25 (unsigned char);
extern unsigned int (*v26) (unsigned char);
unsigned char v27 (signed short, unsigned short, signed char, unsigned short);
unsigned char (*v28) (signed short, unsigned short, signed char, unsigned short) = v27;
signed short v29 (void);
signed short (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 3;
signed char v32 = -3;
unsigned short v31 = 0;

signed short v29 (void)
{
{
for (;;) {
unsigned int v36 = 2U;
signed char v35 = 1;
signed short v34 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v27 (signed short v37, unsigned short v38, signed char v39, unsigned short v40)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
signed char v43 = -3;
signed short v42 = -3;
signed short v41 = -4;
trace++;
switch (trace)
{
case 7: 
return 5;
default: abort ();
}
}
}
}

unsigned short v17 (unsigned int v44, unsigned short v45)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
{
for (;;) {
unsigned short v48 = 0;
signed char v47 = 2;
signed int v46 = 2;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v49;
unsigned char v50;
unsigned short v51;
signed int v52;
signed char v53;
v49 = 6 + 5;
v50 = 6 - 0;
v51 = v48 + v45;
v52 = v46 - v46;
v53 = v19 (v49, v50, v51, v52);
history[history_index++] = (int)v53;
}
break;
case 3: 
{
unsigned char v54;
unsigned int v55;
v54 = 6 - 1;
v55 = v25 (v54);
history[history_index++] = (int)v55;
}
break;
case 5: 
{
unsigned char v56;
unsigned int v57;
v56 = 6 - 4;
v57 = v25 (v56);
history[history_index++] = (int)v57;
}
break;
case 9: 
{
unsigned short v58;
unsigned char v59;
unsigned short v60;
signed int v61;
signed char v62;
v58 = v48 + v48;
v59 = 1 + 1;
v60 = v48 + v48;
v61 = -3 - v46;
v62 = v19 (v58, v59, v60, v61);
history[history_index++] = (int)v62;
}
break;
case 11: 
return v48;
case 13: 
return v48;
default: abort ();
}
}
}
}

signed char v11 (unsigned int v63)
{
history[history_index++] = (int)v63;
{
for (;;) {
signed short v66 = 3;
unsigned short v65 = 3;
signed short v64 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (signed char v67, unsigned char v68, unsigned short v69)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
signed short v72 = -2;
signed char v71 = 1;
unsigned int v70 = 6U;
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
signed short v75;
unsigned short v76;
signed char v77;
signed char v78;
signed short v79;
v75 = 0 + -1;
v76 = v31 + v31;
v77 = -4 + v32;
v78 = 1 + 3;
v79 = v1 (v75, v76, v77, v78);
history[history_index++] = (int)v79;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
