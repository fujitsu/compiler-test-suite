#include <stdio.h>
#include <stdlib.h>
static signed short v1 (signed short);
static signed short (*v2) (signed short) = v1;
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
extern signed short v5 (signed int, unsigned int);
extern signed short (*v6) (signed int, unsigned int);
extern signed short v7 (unsigned int, unsigned char, unsigned char, unsigned short);
extern signed short (*v8) (unsigned int, unsigned char, unsigned char, unsigned short);
extern void v9 (signed short, unsigned int);
extern void (*v10) (signed short, unsigned int);
unsigned short v11 (void);
unsigned short (*v12) (void) = v11;
extern unsigned short v13 (unsigned char, unsigned char);
extern unsigned short (*v14) (unsigned char, unsigned char);
extern unsigned int v15 (unsigned int, signed int);
extern unsigned int (*v16) (unsigned int, signed int);
signed char v17 (void);
signed char (*v18) (void) = v17;
extern unsigned char v19 (signed short, signed int, unsigned short, unsigned char);
extern unsigned char (*v20) (signed short, signed int, unsigned short, unsigned char);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern unsigned char v23 (signed short, unsigned char, unsigned int, signed short);
extern unsigned char (*v24) (signed short, unsigned char, unsigned int, signed short);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
signed int v27 (signed int, unsigned int, signed char, unsigned int);
signed int (*v28) (signed int, unsigned int, signed char, unsigned int) = v27;
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 1U;
unsigned short v32 = 4;
unsigned int v31 = 4U;

signed int v27 (signed int v34, unsigned int v35, signed char v36, unsigned int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed int v40 = 1;
unsigned short v39 = 0;
signed char v38 = -4;
trace++;
switch (trace)
{
case 2: 
{
unsigned int v41;
signed int v42;
unsigned int v43;
v41 = 3U - 2U;
v42 = v40 - v34;
v43 = v15 (v41, v42);
history[history_index++] = (int)v43;
}
break;
case 4: 
{
unsigned int v44;
signed int v45;
unsigned int v46;
v44 = v35 + v37;
v45 = v34 + v34;
v46 = v15 (v44, v45);
history[history_index++] = (int)v46;
}
break;
case 6: 
{
unsigned int v47;
signed int v48;
unsigned int v49;
v47 = v35 + 1U;
v48 = -2 + v34;
v49 = v15 (v47, v48);
history[history_index++] = (int)v49;
}
break;
case 8: 
{
unsigned int v50;
signed int v51;
unsigned int v52;
v50 = v37 - v35;
v51 = v40 - v34;
v52 = v15 (v50, v51);
history[history_index++] = (int)v52;
}
break;
case 10: 
return v34;
case 12: 
return v34;
case 14: 
return v34;
case 16: 
return 0;
default: abort ();
}
}
}
}

signed char v17 (void)
{
{
for (;;) {
unsigned int v55 = 5U;
signed short v54 = -2;
signed char v53 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v11 (void)
{
{
for (;;) {
unsigned short v58 = 7;
unsigned short v57 = 4;
signed short v56 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v1 (signed short v59)
{
history[history_index++] = (int)v59;
{
for (;;) {
unsigned char v62 = 6;
unsigned int v61 = 4U;
unsigned char v60 = 7;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v63;
signed int v64;
unsigned int v65;
v63 = v61 - 7U;
v64 = 1 - 0;
v65 = v15 (v63, v64);
history[history_index++] = (int)v65;
}
break;
case 18: 
return v59;
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
signed short v68;
signed short v69;
v68 = 3 + -2;
v69 = v1 (v68);
history[history_index++] = (int)v69;
}
} while (trace < 18);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
