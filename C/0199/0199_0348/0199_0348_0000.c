#include <stdio.h>
#include <stdlib.h>
static unsigned int v1 (unsigned char, signed char, signed char);
static unsigned int (*v2) (unsigned char, signed char, signed char) = v1;
extern signed char v3 (signed int, signed char, signed short, unsigned char);
extern signed char (*v4) (signed int, signed char, signed short, unsigned char);
extern void v5 (signed int, signed short);
extern void (*v6) (signed int, signed short);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern signed short v9 (signed char, unsigned short, signed int);
extern signed short (*v10) (signed char, unsigned short, signed int);
extern signed char v11 (unsigned int, signed short);
extern signed char (*v12) (unsigned int, signed short);
extern unsigned short v13 (signed short, unsigned int, unsigned char, unsigned int);
extern unsigned short (*v14) (signed short, unsigned int, unsigned char, unsigned int);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern void v17 (signed short, signed char);
extern void (*v18) (signed short, signed char);
extern unsigned short v19 (unsigned short, unsigned short, unsigned short);
extern unsigned short (*v20) (unsigned short, unsigned short, unsigned short);
extern unsigned short v21 (unsigned char);
extern unsigned short (*v22) (unsigned char);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
signed char v25 (signed char, unsigned short, signed char);
signed char (*v26) (signed char, unsigned short, signed char) = v25;
unsigned int v27 (unsigned short);
unsigned int (*v28) (unsigned short) = v27;
unsigned char v29 (unsigned int, signed int, unsigned short);
unsigned char (*v30) (unsigned int, signed int, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 0;
signed int v32 = -1;
signed char v31 = 3;

unsigned char v29 (unsigned int v34, signed int v35, unsigned short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed short v39 = 3;
unsigned char v38 = 1;
unsigned short v37 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v27 (unsigned short v40)
{
history[history_index++] = (int)v40;
{
for (;;) {
signed int v43 = 3;
unsigned int v42 = 3U;
unsigned int v41 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v25 (signed char v44, unsigned short v45, signed char v46)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
signed int v49 = -1;
unsigned short v48 = 4;
unsigned short v47 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v1 (unsigned char v50, signed char v51, signed char v52)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
signed int v55 = -3;
signed int v54 = 2;
unsigned int v53 = 7U;
trace++;
switch (trace)
{
case 0: 
{
signed int v56;
signed char v57;
signed short v58;
unsigned char v59;
signed char v60;
v56 = v55 + v54;
v57 = v51 + 3;
v58 = 0 - -4;
v59 = v50 + v50;
v60 = v3 (v56, v57, v58, v59);
history[history_index++] = (int)v60;
}
break;
case 6: 
{
signed short v61;
v61 = v15 ();
history[history_index++] = (int)v61;
}
break;
case 8: 
{
signed short v62;
signed char v63;
v62 = 2 + 2;
v63 = v51 + -2;
v17 (v62, v63);
}
break;
case 10: 
{
signed short v64;
v64 = v15 ();
history[history_index++] = (int)v64;
}
break;
case 12: 
return v53;
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
unsigned char v67;
signed char v68;
signed char v69;
unsigned int v70;
v67 = 3 - 7;
v68 = v31 - -4;
v69 = 2 - v31;
v70 = v1 (v67, v68, v69);
history[history_index++] = (int)v70;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
