#include <stdio.h>
#include <stdlib.h>
static void v1 (unsigned int);
static void (*v2) (unsigned int) = v1;
unsigned short v3 (unsigned int, unsigned short, signed int, signed short);
unsigned short (*v4) (unsigned int, unsigned short, signed int, signed short) = v3;
extern unsigned short v5 (unsigned char);
extern unsigned short (*v6) (unsigned char);
extern unsigned int v7 (unsigned short, signed char, unsigned int);
extern unsigned int (*v8) (unsigned short, signed char, unsigned int);
extern unsigned int v9 (signed int, unsigned short);
extern unsigned int (*v10) (signed int, unsigned short);
unsigned short v11 (signed short, unsigned int);
unsigned short (*v12) (signed short, unsigned int) = v11;
extern signed int v13 (unsigned int, signed int);
extern signed int (*v14) (unsigned int, signed int);
extern unsigned char v15 (signed int, signed int, signed int);
extern unsigned char (*v16) (signed int, signed int, signed int);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern signed int v19 (unsigned short, signed short);
extern signed int (*v20) (unsigned short, signed short);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern signed int v25 (signed char);
extern signed int (*v26) (signed char);
extern unsigned short v27 (signed short);
extern unsigned short (*v28) (signed short);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 2U;
unsigned int v32 = 7U;
unsigned int v31 = 3U;

unsigned short v11 (signed short v34, unsigned int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed short v38 = 3;
signed int v37 = -3;
signed short v36 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (unsigned int v39, unsigned short v40, signed int v41, signed short v42)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
signed short v45 = 1;
unsigned short v44 = 2;
unsigned int v43 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static void v1 (unsigned int v46)
{
history[history_index++] = (int)v46;
{
for (;;) {
unsigned short v49 = 6;
unsigned short v48 = 3;
unsigned short v47 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v50;
signed int v51;
signed int v52;
v50 = 5U + 4U;
v51 = 3 - 3;
v52 = v13 (v50, v51);
history[history_index++] = (int)v52;
}
break;
case 2: 
{
signed int v53;
signed int v54;
signed int v55;
unsigned char v56;
v53 = -1 - 1;
v54 = 2 - -2;
v55 = -3 - 2;
v56 = v15 (v53, v54, v55);
history[history_index++] = (int)v56;
}
break;
case 6: 
{
signed int v57;
v57 = v21 ();
history[history_index++] = (int)v57;
}
break;
case 8: 
{
signed char v58;
signed int v59;
v58 = 1 + 0;
v59 = v25 (v58);
history[history_index++] = (int)v59;
}
break;
case 10: 
{
signed int v60;
v60 = v23 ();
history[history_index++] = (int)v60;
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
unsigned int v63;
v63 = v31 + v32;
v1 (v63);
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
