#include <stdio.h>
#include <stdlib.h>
unsigned short v1 (signed char);
unsigned short (*v2) (signed char) = v1;
signed short v3 (unsigned short, signed int);
signed short (*v4) (unsigned short, signed int) = v3;
extern void v5 (signed int, unsigned char, unsigned char);
extern void (*v6) (signed int, unsigned char, unsigned char);
unsigned short v7 (unsigned char, signed char);
unsigned short (*v8) (unsigned char, signed char) = v7;
extern signed int v9 (signed int, unsigned char);
extern signed int (*v10) (signed int, unsigned char);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern void v13 (unsigned short, signed char);
extern void (*v14) (unsigned short, signed char);
static signed int v15 (unsigned int, unsigned char);
static signed int (*v16) (unsigned int, unsigned char) = v15;
extern signed char v17 (unsigned short);
extern signed char (*v18) (unsigned short);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern unsigned char v21 (unsigned char, signed int, unsigned int, unsigned short);
extern unsigned char (*v22) (unsigned char, signed int, unsigned int, unsigned short);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern void v25 (unsigned char);
extern void (*v26) (unsigned char);
extern void v27 (signed char, unsigned char, unsigned short);
extern void (*v28) (signed char, unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 5;
signed char v32 = 2;
signed int v31 = 1;

static signed int v15 (unsigned int v34, unsigned char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned short v38 = 2;
signed int v37 = -4;
signed int v36 = -2;
trace++;
switch (trace)
{
case 10: 
return v36;
default: abort ();
}
}
}
}

unsigned short v7 (unsigned char v39, signed char v40)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
unsigned int v43 = 3U;
signed short v42 = 0;
signed char v41 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (unsigned short v44, signed int v45)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
{
for (;;) {
signed short v48 = -2;
signed short v47 = 1;
unsigned char v46 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (signed char v49)
{
history[history_index++] = (int)v49;
{
for (;;) {
unsigned int v52 = 7U;
unsigned int v51 = 4U;
unsigned char v50 = 7;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v53;
signed int v54;
unsigned int v55;
unsigned short v56;
unsigned char v57;
v53 = 4 + v50;
v54 = 0 - -1;
v55 = 6U - v52;
v56 = 3 + 0;
v57 = v21 (v53, v54, v55, v56);
history[history_index++] = (int)v57;
}
break;
case 2: 
{
unsigned int v58;
v58 = v23 ();
history[history_index++] = (int)v58;
}
break;
case 4: 
{
unsigned char v59;
v59 = v50 + v50;
v25 (v59);
}
break;
case 7: 
{
signed int v60;
unsigned char v61;
signed int v62;
v60 = -3 - -1;
v61 = 6 + v50;
v62 = v9 (v60, v61);
history[history_index++] = (int)v62;
}
break;
case 9: 
{
unsigned int v63;
unsigned char v64;
signed int v65;
v63 = 2U - v51;
v64 = 6 - 6;
v65 = v15 (v63, v64);
history[history_index++] = (int)v65;
}
break;
case 11: 
return 6;
case 14: 
return 4;
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
signed char v68;
unsigned short v69;
v68 = -2 - v32;
v69 = v1 (v68);
history[history_index++] = (int)v69;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
