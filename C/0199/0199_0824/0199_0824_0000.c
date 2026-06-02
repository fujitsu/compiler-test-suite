#include <stdio.h>
#include <stdlib.h>
static unsigned char v1 (signed short);
static unsigned char (*v2) (signed short) = v1;
extern signed short v3 (void);
extern signed short (*v4) (void);
extern unsigned int v5 (signed char, signed short);
extern unsigned int (*v6) (signed char, signed short);
extern signed char v7 (signed short, signed char, signed char, unsigned int);
extern signed char (*v8) (signed short, signed char, signed char, unsigned int);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern signed short v15 (signed char, unsigned char);
extern signed short (*v16) (signed char, unsigned char);
extern signed short v17 (unsigned int, signed short);
extern signed short (*v18) (unsigned int, signed short);
extern unsigned char v19 (signed char, unsigned short);
extern unsigned char (*v20) (signed char, unsigned short);
extern unsigned short v21 (unsigned short);
extern unsigned short (*v22) (unsigned short);
unsigned char v23 (unsigned short, unsigned int, unsigned short);
unsigned char (*v24) (unsigned short, unsigned int, unsigned short) = v23;
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
signed char v27 (unsigned int, unsigned int, signed char, signed short);
signed char (*v28) (unsigned int, unsigned int, signed char, signed short) = v27;
extern unsigned char v29 (unsigned int);
extern unsigned char (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -3;
unsigned int v32 = 3U;
unsigned char v31 = 1;

signed char v27 (unsigned int v34, unsigned int v35, signed char v36, signed short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned int v40 = 6U;
unsigned short v39 = 1;
unsigned int v38 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v23 (unsigned short v41, unsigned int v42, unsigned short v43)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
signed char v46 = -3;
unsigned int v45 = 7U;
signed char v44 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v1 (signed short v47)
{
history[history_index++] = (int)v47;
{
for (;;) {
signed short v50 = 2;
signed short v49 = 0;
signed short v48 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed char v51;
signed short v52;
unsigned int v53;
v51 = -3 - 3;
v52 = v48 - v50;
v53 = v5 (v51, v52);
history[history_index++] = (int)v53;
}
break;
case 14: 
return 1;
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
signed short v56;
unsigned char v57;
v56 = -3 + -1;
v57 = v1 (v56);
history[history_index++] = (int)v57;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
