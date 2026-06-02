#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (signed short, signed char, unsigned short, signed int);
extern unsigned int (*v2) (signed short, signed char, unsigned short, signed int);
signed char v3 (signed short, signed short, unsigned short);
signed char (*v4) (signed short, signed short, unsigned short) = v3;
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
unsigned int v7 (signed char, signed char, signed char, signed short);
unsigned int (*v8) (signed char, signed char, signed char, signed short) = v7;
unsigned int v9 (signed char);
unsigned int (*v10) (signed char) = v9;
extern unsigned short v11 (signed int, signed int);
extern unsigned short (*v12) (signed int, signed int);
signed int v13 (unsigned char);
signed int (*v14) (unsigned char) = v13;
extern unsigned char v15 (signed int, unsigned char, unsigned short, signed int);
extern unsigned char (*v16) (signed int, unsigned char, unsigned short, signed int);
unsigned short v17 (void);
unsigned short (*v18) (void) = v17;
extern signed char v19 (unsigned int, unsigned short, unsigned short, unsigned short);
extern signed char (*v20) (unsigned int, unsigned short, unsigned short, unsigned short);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern unsigned int v23 (signed char, signed int, signed int);
extern unsigned int (*v24) (signed char, signed int, signed int);
extern unsigned int v25 (unsigned short, unsigned short, signed char, unsigned int);
extern unsigned int (*v26) (unsigned short, unsigned short, signed char, unsigned int);
extern unsigned char v27 (unsigned char, unsigned char, unsigned int);
extern unsigned char (*v28) (unsigned char, unsigned char, unsigned int);
extern unsigned int v29 (signed char, signed int, unsigned int, unsigned char);
extern unsigned int (*v30) (signed char, signed int, unsigned int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 0;
signed short v32 = 3;
signed char v31 = 2;

unsigned short v17 (void)
{
{
for (;;) {
unsigned short v36 = 4;
signed char v35 = -2;
unsigned short v34 = 2;
trace++;
switch (trace)
{
case 9: 
{
signed char v37;
signed int v38;
signed int v39;
unsigned int v40;
v37 = v35 - -1;
v38 = -2 + -4;
v39 = 1 + -1;
v40 = v23 (v37, v38, v39);
history[history_index++] = (int)v40;
}
break;
case 13: 
return v34;
default: abort ();
}
}
}
}

signed int v13 (unsigned char v41)
{
history[history_index++] = (int)v41;
{
for (;;) {
unsigned int v44 = 1U;
unsigned char v43 = 6;
unsigned int v42 = 2U;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v45;
unsigned short v46;
signed char v47;
unsigned int v48;
unsigned int v49;
v45 = 7 - 5;
v46 = 3 - 6;
v47 = 3 - 1;
v48 = v42 + v44;
v49 = v25 (v45, v46, v47, v48);
history[history_index++] = (int)v49;
}
break;
case 3: 
{
unsigned short v50;
unsigned short v51;
signed char v52;
unsigned int v53;
unsigned int v54;
v50 = 5 + 0;
v51 = 0 + 1;
v52 = 1 - 2;
v53 = v42 - v42;
v54 = v25 (v50, v51, v52, v53);
history[history_index++] = (int)v54;
}
break;
case 5: 
return 0;
default: abort ();
}
}
}
}

unsigned int v9 (signed char v55)
{
history[history_index++] = (int)v55;
{
for (;;) {
signed short v58 = -4;
signed int v57 = -3;
signed short v56 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (signed char v59, signed char v60, signed char v61, signed short v62)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
unsigned int v65 = 7U;
signed char v64 = -1;
unsigned char v63 = 7;
trace++;
switch (trace)
{
case 7: 
return v65;
default: abort ();
}
}
}
}

signed char v3 (signed short v66, signed short v67, unsigned short v68)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
signed int v71 = 2;
unsigned short v70 = 7;
signed short v69 = 3;
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
signed short v74;
signed char v75;
unsigned short v76;
signed int v77;
unsigned int v78;
v74 = v32 + v32;
v75 = v31 - v31;
v76 = 5 - 3;
v77 = -2 + 1;
v78 = v1 (v74, v75, v76, v77);
history[history_index++] = (int)v78;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
