#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
signed short v3 (unsigned char, unsigned char, unsigned short);
signed short (*v4) (unsigned char, unsigned char, unsigned short) = v3;
extern signed char v5 (signed short, signed short);
extern signed char (*v6) (signed short, signed short);
extern void v7 (signed int, unsigned int, signed char, unsigned short);
extern void (*v8) (signed int, unsigned int, signed char, unsigned short);
extern signed short v9 (unsigned int, unsigned char);
extern signed short (*v10) (unsigned int, unsigned char);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern unsigned short v13 (signed short, signed char);
extern unsigned short (*v14) (signed short, signed char);
unsigned short v15 (unsigned int);
unsigned short (*v16) (unsigned int) = v15;
signed int v17 (unsigned char, unsigned int, unsigned short);
signed int (*v18) (unsigned char, unsigned int, unsigned short) = v17;
extern signed int v19 (void);
extern signed int (*v20) (void);
extern signed int v21 (unsigned short, signed short);
extern signed int (*v22) (unsigned short, signed short);
extern void v23 (signed char, unsigned char, unsigned short);
extern void (*v24) (signed char, unsigned char, unsigned short);
extern unsigned short v25 (signed char, unsigned int);
extern unsigned short (*v26) (signed char, unsigned int);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
static unsigned short v29 (signed int, signed int, signed char, unsigned int);
static unsigned short (*v30) (signed int, signed int, signed char, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 2;
signed short v32 = 2;
unsigned char v31 = 6;

static unsigned short v29 (signed int v34, signed int v35, signed char v36, unsigned int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed int v40 = -1;
signed short v39 = -3;
signed int v38 = 2;
trace++;
switch (trace)
{
case 5: 
return 1;
default: abort ();
}
}
}
}

signed int v17 (unsigned char v41, unsigned int v42, unsigned short v43)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
signed short v46 = -3;
unsigned int v45 = 6U;
unsigned short v44 = 0;
trace++;
switch (trace)
{
case 4: 
{
signed int v47;
signed int v48;
signed char v49;
unsigned int v50;
unsigned short v51;
v47 = -3 - 3;
v48 = 3 - -4;
v49 = -4 + 2;
v50 = 0U - v45;
v51 = v29 (v47, v48, v49, v50);
history[history_index++] = (int)v51;
}
break;
case 6: 
{
unsigned int v52;
v52 = v27 ();
history[history_index++] = (int)v52;
}
break;
case 8: 
return -4;
default: abort ();
}
}
}
}

unsigned short v15 (unsigned int v53)
{
history[history_index++] = (int)v53;
{
for (;;) {
unsigned char v56 = 1;
unsigned int v55 = 1U;
signed short v54 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (unsigned char v57, unsigned char v58, unsigned short v59)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
unsigned short v62 = 2;
signed int v61 = -2;
unsigned short v60 = 3;
trace++;
switch (trace)
{
case 11: 
return -4;
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
signed char v65;
v65 = v1 ();
history[history_index++] = (int)v65;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
