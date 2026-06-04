#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
unsigned short v3 (unsigned int, unsigned char, unsigned int);
unsigned short (*v4) (unsigned int, unsigned char, unsigned int) = v3;
extern signed int v5 (signed short, signed char);
extern signed int (*v6) (signed short, signed char);
extern unsigned short v7 (signed int, unsigned int, signed int, signed int);
extern unsigned short (*v8) (signed int, unsigned int, signed int, signed int);
extern void v9 (unsigned short);
extern void (*v10) (unsigned short);
void v11 (void);
void (*v12) (void) = v11;
extern void v13 (unsigned int, signed short);
extern void (*v14) (unsigned int, signed short);
extern signed char v15 (signed short, unsigned int, unsigned short);
extern signed char (*v16) (signed short, unsigned int, unsigned short);
extern unsigned int v17 (unsigned int, unsigned char);
extern unsigned int (*v18) (unsigned int, unsigned char);
extern signed int v19 (signed char);
extern signed int (*v20) (signed char);
static unsigned short v21 (void);
static unsigned short (*v22) (void) = v21;
extern signed int v23 (unsigned short, unsigned short);
extern signed int (*v24) (unsigned short, unsigned short);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern void v27 (signed int, unsigned char, unsigned char);
extern void (*v28) (signed int, unsigned char, unsigned char);
static signed short v29 (unsigned int, unsigned char, unsigned int, unsigned short);
static signed short (*v30) (unsigned int, unsigned char, unsigned int, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 2U;
signed char v32 = 1;
signed short v31 = -3;

static signed short v29 (unsigned int v34, unsigned char v35, unsigned int v36, unsigned short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed int v40 = -1;
signed int v39 = -4;
unsigned int v38 = 1U;
trace++;
switch (trace)
{
case 5: 
return 0;
default: abort ();
}
}
}
}

static unsigned short v21 (void)
{
{
for (;;) {
signed short v43 = -4;
signed int v42 = -1;
signed char v41 = -4;
trace++;
switch (trace)
{
case 4: 
{
unsigned int v44;
unsigned char v45;
unsigned int v46;
unsigned short v47;
signed short v48;
v44 = 6U - 7U;
v45 = 6 + 4;
v46 = 0U + 0U;
v47 = 6 + 3;
v48 = v29 (v44, v45, v46, v47);
history[history_index++] = (int)v48;
}
break;
case 6: 
return 6;
case 8: 
{
signed int v49;
unsigned char v50;
unsigned char v51;
v49 = v42 - v42;
v50 = 7 - 6;
v51 = 1 - 2;
v27 (v49, v50, v51);
}
break;
case 12: 
return 3;
default: abort ();
}
}
}
}

void v11 (void)
{
{
for (;;) {
unsigned int v54 = 2U;
unsigned short v53 = 3;
signed short v52 = -4;
trace++;
switch (trace)
{
case 1: 
return;
case 3: 
{
unsigned short v55;
v55 = v21 ();
history[history_index++] = (int)v55;
}
break;
case 7: 
{
unsigned short v56;
v56 = v21 ();
history[history_index++] = (int)v56;
}
break;
case 13: 
return;
default: abort ();
}
}
}
}

unsigned short v3 (unsigned int v57, unsigned char v58, unsigned int v59)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
unsigned char v62 = 3;
signed char v61 = -4;
signed int v60 = -1;
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
unsigned short v65;
v65 = v1 ();
history[history_index++] = (int)v65;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
