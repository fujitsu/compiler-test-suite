#include <stdio.h>
#include <stdlib.h>
static void v1 (signed int);
static void (*v2) (signed int) = v1;
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern unsigned short v5 (signed char);
extern unsigned short (*v6) (signed char);
extern unsigned int v7 (unsigned short, signed short);
extern unsigned int (*v8) (unsigned short, signed short);
extern signed char v9 (unsigned int, signed char);
extern signed char (*v10) (unsigned int, signed char);
signed int v11 (unsigned char, unsigned char, unsigned int);
signed int (*v12) (unsigned char, unsigned char, unsigned int) = v11;
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern signed char v15 (unsigned int);
extern signed char (*v16) (unsigned int);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern signed int v19 (signed short);
extern signed int (*v20) (signed short);
extern signed int v21 (signed int, unsigned short);
extern signed int (*v22) (signed int, unsigned short);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern unsigned char v27 (unsigned short, unsigned short);
extern unsigned char (*v28) (unsigned short, unsigned short);
extern signed int v29 (unsigned char, signed short, unsigned char, unsigned int);
extern signed int (*v30) (unsigned char, signed short, unsigned char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 3;
signed int v32 = 1;
unsigned int v31 = 0U;

signed int v11 (unsigned char v34, unsigned char v35, unsigned int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed char v39 = 0;
unsigned char v38 = 6;
signed int v37 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static void v1 (signed int v40)
{
history[history_index++] = (int)v40;
{
for (;;) {
unsigned short v43 = 5;
unsigned short v42 = 0;
signed short v41 = 0;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v44;
signed char v45;
signed char v46;
v44 = 3U - 3U;
v45 = -3 - -2;
v46 = v9 (v44, v45);
history[history_index++] = (int)v46;
}
break;
case 12: 
return;
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
signed int v49;
v49 = v32 - 2;
v1 (v49);
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
