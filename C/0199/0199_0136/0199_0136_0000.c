#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (signed char);
extern signed char (*v2) (signed char);
extern unsigned char v3 (unsigned char, signed char, signed short, unsigned short);
extern unsigned char (*v4) (unsigned char, signed char, signed short, unsigned short);
extern signed short v5 (unsigned short, unsigned short);
extern signed short (*v6) (unsigned short, unsigned short);
extern unsigned char v7 (unsigned char, signed char, unsigned int);
extern unsigned char (*v8) (unsigned char, signed char, unsigned int);
extern signed short v9 (signed char, signed char, unsigned char, unsigned short);
extern signed short (*v10) (signed char, signed char, unsigned char, unsigned short);
unsigned short v11 (unsigned short, signed short);
unsigned short (*v12) (unsigned short, signed short) = v11;
extern signed short v13 (unsigned int, signed char);
extern signed short (*v14) (unsigned int, signed char);
signed short v15 (signed int, signed int);
signed short (*v16) (signed int, signed int) = v15;
unsigned short v17 (signed int, signed short, unsigned int, unsigned char);
unsigned short (*v18) (signed int, signed short, unsigned int, unsigned char) = v17;
extern signed short v19 (signed char, signed short);
extern signed short (*v20) (signed char, signed short);
extern unsigned char v21 (unsigned char, signed int, signed short, unsigned char);
extern unsigned char (*v22) (unsigned char, signed int, signed short, unsigned char);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern signed short v25 (signed char, unsigned char, unsigned short);
extern signed short (*v26) (signed char, unsigned char, unsigned short);
extern void v27 (unsigned char, signed int, unsigned int, unsigned char);
extern void (*v28) (unsigned char, signed int, unsigned int, unsigned char);
signed char v29 (unsigned int, unsigned short);
signed char (*v30) (unsigned int, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 2;
unsigned short v32 = 6;
signed char v31 = -3;

signed char v29 (unsigned int v34, unsigned short v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned short v38 = 5;
signed char v37 = -1;
signed short v36 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v17 (signed int v39, signed short v40, unsigned int v41, unsigned char v42)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
unsigned int v45 = 6U;
signed char v44 = 0;
unsigned int v43 = 3U;
trace++;
switch (trace)
{
case 3: 
{
signed char v46;
signed short v47;
signed short v48;
v46 = v44 + -1;
v47 = -3 - 1;
v48 = v19 (v46, v47);
history[history_index++] = (int)v48;
}
break;
case 5: 
{
signed char v49;
signed char v50;
unsigned char v51;
unsigned short v52;
signed short v53;
v49 = 1 + v44;
v50 = v44 - v44;
v51 = v42 + v42;
v52 = 4 + 6;
v53 = v9 (v49, v50, v51, v52);
history[history_index++] = (int)v53;
}
break;
case 15: 
return 3;
default: abort ();
}
}
}
}

signed short v15 (signed int v54, signed int v55)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
unsigned int v58 = 3U;
unsigned char v57 = 1;
unsigned short v56 = 6;
trace++;
switch (trace)
{
case 1: 
return 2;
case 10: 
{
unsigned short v59;
unsigned short v60;
signed short v61;
v59 = 5 - 2;
v60 = v56 - v56;
v61 = v5 (v59, v60);
history[history_index++] = (int)v61;
}
break;
case 12: 
return -2;
default: abort ();
}
}
}
}

unsigned short v11 (unsigned short v62, signed short v63)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
{
for (;;) {
unsigned int v66 = 1U;
unsigned short v65 = 1;
signed char v64 = 1;
trace++;
switch (trace)
{
case 7: 
return v62;
case 9: 
{
signed int v67;
signed int v68;
signed short v69;
v67 = -2 - 3;
v68 = 1 + -3;
v69 = v15 (v67, v68);
history[history_index++] = (int)v69;
}
break;
case 13: 
return v62;
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
signed char v72;
signed char v73;
v72 = v31 - v31;
v73 = v1 (v72);
history[history_index++] = (int)v73;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
