#include <stdio.h>
#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern void v3 (void);
extern void (*v4) (void);
extern unsigned short v5 (signed short, signed char, unsigned char);
extern unsigned short (*v6) (signed short, signed char, unsigned char);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
unsigned char v9 (signed int, unsigned short, unsigned int, signed short);
unsigned char (*v10) (signed int, unsigned short, unsigned int, signed short) = v9;
extern signed char v11 (void);
extern signed char (*v12) (void);
extern unsigned char v13 (signed char, unsigned int, unsigned short, signed short);
extern unsigned char (*v14) (signed char, unsigned int, unsigned short, signed short);
extern signed char v15 (void);
extern signed char (*v16) (void);
signed int v17 (signed char, unsigned char);
signed int (*v18) (signed char, unsigned char) = v17;
signed int v19 (void);
signed int (*v20) (void) = v19;
unsigned char v21 (signed short, signed int, unsigned char, unsigned int);
unsigned char (*v22) (signed short, signed int, unsigned char, unsigned int) = v21;
extern unsigned short v23 (unsigned char, signed short);
extern unsigned short (*v24) (unsigned char, signed short);
extern unsigned int v25 (unsigned char, signed short, unsigned char, signed int);
extern unsigned int (*v26) (unsigned char, signed short, unsigned char, signed int);
extern signed char v27 (unsigned short, unsigned int, unsigned short, signed short);
extern signed char (*v28) (unsigned short, unsigned int, unsigned short, signed short);
extern unsigned char v29 (unsigned int, unsigned char, signed char);
extern unsigned char (*v30) (unsigned int, unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -2;
unsigned char v32 = 3;
unsigned int v31 = 0U;

unsigned char v21 (signed short v34, signed int v35, unsigned char v36, unsigned int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned short v40 = 1;
unsigned char v39 = 2;
unsigned short v38 = 6;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v41;
signed short v42;
unsigned short v43;
v41 = v36 + v36;
v42 = v34 - -1;
v43 = v23 (v41, v42);
history[history_index++] = (int)v43;
}
break;
case 3: 
{
unsigned short v44;
unsigned int v45;
unsigned short v46;
signed short v47;
signed char v48;
v44 = v38 + 4;
v45 = v37 - 3U;
v46 = 4 - 7;
v47 = v34 - v34;
v48 = v27 (v44, v45, v46, v47);
history[history_index++] = (int)v48;
}
break;
case 5: 
{
unsigned char v49;
signed short v50;
unsigned short v51;
v49 = v39 - 7;
v50 = v34 - v34;
v51 = v23 (v49, v50);
history[history_index++] = (int)v51;
}
break;
case 7: 
{
unsigned short v52;
unsigned int v53;
unsigned short v54;
signed short v55;
signed char v56;
v52 = 5 - 2;
v53 = 2U - 5U;
v54 = v38 - 3;
v55 = v34 - 1;
v56 = v27 (v52, v53, v54, v55);
history[history_index++] = (int)v56;
}
break;
case 9: 
{
unsigned char v57;
signed short v58;
unsigned short v59;
v57 = v39 + 1;
v58 = -2 + v34;
v59 = v23 (v57, v58);
history[history_index++] = (int)v59;
}
break;
case 11: 
return v36;
default: abort ();
}
}
}
}

signed int v19 (void)
{
{
for (;;) {
signed short v62 = -3;
unsigned char v61 = 2;
unsigned short v60 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (signed char v63, unsigned char v64)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
unsigned int v67 = 5U;
signed int v66 = -1;
signed char v65 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (signed int v68, unsigned short v69, unsigned int v70, signed short v71)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
signed int v74 = -1;
unsigned int v73 = 0U;
signed char v72 = 1;
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
v1 ();
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
