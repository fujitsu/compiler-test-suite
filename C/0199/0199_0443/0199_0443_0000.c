#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (signed short, unsigned short);
extern signed int (*v2) (signed short, unsigned short);
extern unsigned int v3 (signed char, unsigned char);
extern unsigned int (*v4) (signed char, unsigned char);
signed char v5 (void);
signed char (*v6) (void) = v5;
extern signed char v7 (signed short, signed int, signed char);
extern signed char (*v8) (signed short, signed int, signed char);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned short v11 (signed char, signed int);
extern unsigned short (*v12) (signed char, signed int);
extern signed short v13 (unsigned int);
extern signed short (*v14) (unsigned int);
unsigned char v15 (signed int, signed char, unsigned int, signed short);
unsigned char (*v16) (signed int, signed char, unsigned int, signed short) = v15;
extern unsigned short v17 (signed int, signed char);
extern unsigned short (*v18) (signed int, signed char);
extern unsigned char v19 (signed char, unsigned char, signed char, signed char);
extern unsigned char (*v20) (signed char, unsigned char, signed char, signed char);
extern unsigned int v21 (signed char, signed int, unsigned int);
extern unsigned int (*v22) (signed char, signed int, unsigned int);
extern unsigned short v23 (unsigned int, unsigned int);
extern unsigned short (*v24) (unsigned int, unsigned int);
unsigned char v25 (unsigned char, unsigned short, unsigned short, unsigned char);
unsigned char (*v26) (unsigned char, unsigned short, unsigned short, unsigned char) = v25;
signed char v27 (signed short, signed char, signed char, signed short);
signed char (*v28) (signed short, signed char, signed char, signed short) = v27;
signed short v29 (void);
signed short (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 5;
signed int v32 = 2;
signed char v31 = 2;

signed short v29 (void)
{
{
for (;;) {
unsigned int v36 = 2U;
signed int v35 = 1;
unsigned int v34 = 2U;
trace++;
switch (trace)
{
case 1: 
return 3;
default: abort ();
}
}
}
}

signed char v27 (signed short v37, signed char v38, signed char v39, signed short v40)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
unsigned short v43 = 3;
signed char v42 = -4;
unsigned short v41 = 6;
trace++;
switch (trace)
{
case 3: 
return v38;
default: abort ();
}
}
}
}

unsigned char v25 (unsigned char v44, unsigned short v45, unsigned short v46, unsigned char v47)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
unsigned short v50 = 1;
unsigned char v49 = 0;
unsigned int v48 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (signed int v51, signed char v52, unsigned int v53, signed short v54)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
signed short v57 = -1;
unsigned int v56 = 2U;
signed short v55 = -3;
trace++;
switch (trace)
{
case 5: 
{
signed char v58;
signed int v59;
unsigned int v60;
unsigned int v61;
v58 = v52 + v52;
v59 = -4 + 2;
v60 = v56 + 5U;
v61 = v21 (v58, v59, v60);
history[history_index++] = (int)v61;
}
break;
case 11: 
return 7;
default: abort ();
}
}
}
}

signed char v5 (void)
{
{
for (;;) {
unsigned short v64 = 7;
signed short v63 = -2;
signed char v62 = 2;
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
signed short v67;
unsigned short v68;
signed int v69;
v67 = 1 + -3;
v68 = 7 + v33;
v69 = v1 (v67, v68);
history[history_index++] = (int)v69;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
