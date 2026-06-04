#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (unsigned short);
extern unsigned char (*v2) (unsigned short);
unsigned char v3 (signed short, unsigned int);
unsigned char (*v4) (signed short, unsigned int) = v3;
extern unsigned short v5 (unsigned char, signed int);
extern unsigned short (*v6) (unsigned char, signed int);
unsigned short v7 (signed int, signed int, signed char, signed char);
unsigned short (*v8) (signed int, signed int, signed char, signed char) = v7;
signed short v11 (void);
signed short (*v12) (void) = v11;
extern unsigned short v13 (signed char, unsigned short, signed short);
extern unsigned short (*v14) (signed char, unsigned short, signed short);
signed short v15 (unsigned short);
signed short (*v16) (unsigned short) = v15;
extern unsigned short v17 (signed short);
extern unsigned short (*v18) (signed short);
extern signed int v19 (signed char, unsigned int, unsigned short);
extern signed int (*v20) (signed char, unsigned int, unsigned short);
signed char v21 (unsigned short, unsigned char);
signed char (*v22) (unsigned short, unsigned char) = v21;
extern signed short v23 (unsigned short, unsigned short, signed int);
extern signed short (*v24) (unsigned short, unsigned short, signed int);
extern void v25 (void);
extern void (*v26) (void);
extern unsigned int v27 (signed int, unsigned int, unsigned char, unsigned short);
extern unsigned int (*v28) (signed int, unsigned int, unsigned char, unsigned short);
extern unsigned char v29 (unsigned char, unsigned char);
extern unsigned char (*v30) (unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 3;
unsigned short v32 = 7;
unsigned char v31 = 5;

signed char v21 (unsigned short v34, unsigned char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed char v38 = -2;
signed short v37 = 3;
unsigned int v36 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (unsigned short v39)
{
history[history_index++] = (int)v39;
{
for (;;) {
signed int v42 = 1;
unsigned short v41 = 2;
signed char v40 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (void)
{
{
for (;;) {
unsigned int v45 = 0U;
signed short v44 = -4;
unsigned char v43 = 2;
trace++;
switch (trace)
{
case 2: 
return -2;
case 4: 
{
unsigned char v46;
unsigned char v47;
unsigned char v48;
v46 = 4 + 1;
v47 = 3 - v43;
v48 = v29 (v46, v47);
history[history_index++] = (int)v48;
}
break;
case 6: 
{
unsigned char v49;
unsigned char v50;
unsigned char v51;
v49 = v43 - 7;
v50 = v43 + 1;
v51 = v29 (v49, v50);
history[history_index++] = (int)v51;
}
break;
case 8: 
return -4;
default: abort ();
}
}
}
}

unsigned short v7 (signed int v52, signed int v53, signed char v54, signed char v55)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
signed char v58 = -2;
signed char v57 = -2;
signed char v56 = 0;
trace++;
switch (trace)
{
case 10: 
{
unsigned char v59;
unsigned char v60;
unsigned char v61;
v59 = 3 - 5;
v60 = 6 - 7;
v61 = v29 (v59, v60);
history[history_index++] = (int)v61;
}
break;
case 12: 
return 6;
default: abort ();
}
}
}
}

unsigned char v3 (signed short v62, unsigned int v63)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
{
for (;;) {
signed int v66 = 0;
signed char v65 = -3;
signed int v64 = 1;
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
unsigned short v69;
unsigned char v70;
v69 = 6 - 6;
v70 = v1 (v69);
history[history_index++] = (int)v70;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
